export default [
  {
    component: 'CNavTitle',
    name: 'Menu',
  },
  {
    component: 'CNavGroup',
    name: 'Home',
    to: '/base',
    icon: 'cil-puzzle',
    items: [
      {
        component: 'CNavItem',
        name: 'Home view',
        to: '/',
      },
      {
        component: 'CNavItem',
        name: 'News',
        to: '/base/carousels',
      },
    ],
  },
  {
    component: 'CNavGroup',
    name: 'Appointments',
    to: '/base',
    icon: 'cil-cursor',
    items: [
      {
        component: 'CNavItem',
        name: 'Schedules',
        to: '/base/cards',
      },
      {
        component: 'CNavItem',
        name: 'Appointments',
        to: '/base/carousels',
      },
    ],
  },
  {
    component: 'CNavGroup',
    name: 'Contacts',
    to: '/base',
    icon: 'cil-notes',
    items: [
      {
        component: 'CNavItem',
        name: 'Patients',
        to: '/base/accordion',
      },
      {
        component: 'CNavItem',
        name: 'Employees',
        to: '/base/breadcrumbs',
      },
    ],
  },
  {
    component: 'CNavGroup',
    name: 'Administrator',
    to: '/base',
    icon: 'cilLaptop',
    items: [
      {
        component: 'CNavItem',
        name: 'Patients',
        to: '/base/accordion',
      },
      {
        component: 'CNavItem',
        name: 'Employees',
        to: '/base/breadcrumbs',
      },
      {
        component: 'CNavItem',
        name: 'Schedules',
        to: '/base/cards',
      },
      {
        component: 'CNavItem',
        name: 'Appointments',
        to: '/base/carousels',
      },
      {
        component: 'CNavItem',
        name: 'All Users',
        to: '/app/table',
      },
    ],
  },
]
