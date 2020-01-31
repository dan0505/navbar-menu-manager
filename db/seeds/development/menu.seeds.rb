m1 = Menu.create!(name: "Contacts", sort: 1)

in_person = m1.submenus.create!(name: "In-Person", sort: 1)
MenuItem.create!(name: "Our-shops", sort: 1, menu: m1, submenu: in_person)
MenuItem.create!(name: "Partners", sort: 2, menu: m1, submenu: in_person)

online = m1.submenus.create!(name: "Online", sort: 2)
MenuItem.create!(name: "Email", sort: 1, menu: m1, submenu: online)
MenuItem.create!(name: "Online-Chat", sort: 2, menu: m1, submenu: online)

m2 = Menu.create!(name: "FAQs", sort: 2)

cq = m2.submenus.create!(name: "Common-Questions", sort: 1)
MenuItem.create(name: "How-to-login", sort: 1, menu: m2, submenu: cq)
MenuItem.create(name: "How-to-register", sort: 2, menu: m2, submenu: cq)

more = m2.submenus.create(name: "More", sort: 2)
MenuItem.create(name: "More-Questions", sort: 1, menu: m2, submenu: more)
