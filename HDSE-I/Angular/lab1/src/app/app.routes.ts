import { Routes } from '@angular/router';
import { ContactComponent } from './contact/contact.component';
import { AboutComponent } from './about/about.component';
import { CrudComponent } from './crud/crud.component';

export const routes: Routes = [
    {
        path: '',
        component: ContactComponent
    },
    {
        path: 'about',
        component: AboutComponent
    },
    {
        path: 'services',
        component: ContactComponent
    },
    {
        path: 'crud',
        component: CrudComponent
    }
];
