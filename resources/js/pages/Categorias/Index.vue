<script setup lang="ts">
import AppLayout from '@/layouts/AppLayout.vue';
import { Head } from '@inertiajs/vue3';

defineProps<{
    categorias: any[];
}>();
</script>

<template>
    <AppLayout title="Categorias">
        <Head title="Categorias" />

        <div class="py-12">
            <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
                <div class="bg-white dark:bg-gray-800 overflow-hidden shadow-sm sm:rounded-lg">
                    <div class="p-6 text-gray-900 dark:text-gray-100">
                        <h2 class="text-2xl font-bold mb-4">Categorias</h2>

                        <div v-if="categorias && categorias.length > 0" class="grid gap-4">
                            <div v-for="categoria in categorias" :key="categoria.id" class="border p-4 rounded-lg">
                                <h3 class="text-lg font-semibold">{{ categoria.nombre }}</h3>
                                <p v-if="categoria.descripcion" class="text-gray-600 dark:text-gray-400 mt-2">
                                    {{ categoria.descripcion }}
                                </p>
                            </div>
                        </div>

                        <div v-else class="text-center py-8">
                            <p class="text-gray-500 dark:text-gray-400">No hay categorias disponibles.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </AppLayout>
</template>
