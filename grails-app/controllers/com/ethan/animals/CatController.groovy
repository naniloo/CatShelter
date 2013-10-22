package com.ethan.animals

import org.springframework.dao.DataIntegrityViolationException

class CatController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [catInstanceList: Cat.list(params), catInstanceTotal: Cat.count()]
    }

    def create() {
        [catInstance: new Cat(params)]
    }

    def save() {
        def catInstance = new Cat(params)
        if (!catInstance.save(flush: true)) {
            render(view: "create", model: [catInstance: catInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'cat.label', default: 'Cat'), catInstance.id])
        redirect(action: "show", id: catInstance.id)
    }

    def show(Long id) {
        def catInstance = Cat.get(id)
        if (!catInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'cat.label', default: 'Cat'), id])
            redirect(action: "list")
            return
        }

        [catInstance: catInstance]
    }

    def edit(Long id) {
        def catInstance = Cat.get(id)
        if (!catInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'cat.label', default: 'Cat'), id])
            redirect(action: "list")
            return
        }

        [catInstance: catInstance]
    }

    def update(Long id, Long version) {
        def catInstance = Cat.get(id)
        if (!catInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'cat.label', default: 'Cat'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (catInstance.version > version) {
                catInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'cat.label', default: 'Cat')] as Object[],
                          "Another user has updated this Cat while you were editing")
                render(view: "edit", model: [catInstance: catInstance])
                return
            }
        }

        catInstance.properties = params

        if (!catInstance.save(flush: true)) {
            render(view: "edit", model: [catInstance: catInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'cat.label', default: 'Cat'), catInstance.id])
        redirect(action: "show", id: catInstance.id)
    }

    def delete(Long id) {
        def catInstance = Cat.get(id)
        if (!catInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'cat.label', default: 'Cat'), id])
            redirect(action: "list")
            return
        }

        try {
            catInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'cat.label', default: 'Cat'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'cat.label', default: 'Cat'), id])
            redirect(action: "show", id: id)
        }
    }
}
