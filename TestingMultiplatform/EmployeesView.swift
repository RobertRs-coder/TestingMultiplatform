//
//  EmployeesView.swift
//  TestingMultiplatform
//
//  Created by Roberto Rojo Sahuquillo on 1/11/22.
//

import SwiftUI

func getTestData() -> [Employee]{
    return [
        Employee(id: "100", nombre: "David", apell1: "Perez", apell2: "Maroto", idPhoto: "01", edad: 40),
        Employee(id: "101", nombre: "Jose", apell1: "Bustos", apell2: "Esteban", idPhoto: "02", edad: 46),
        Employee(id: "102", nombre: "Macarena", apell1: "Esteban", apell2: "Soto", idPhoto: "03", edad: 26),
        Employee(id: "103", nombre: "Diego", apell1: "Prieto", apell2: "Merino", idPhoto: "04", edad: 36)
    ]
}



struct EmployeesView: View {
    private var employees = getTestData()
    
    var body: some View {
        NavigationView{
            List{
                ForEach(employees) { employee in
                    NavigationLink {
                        //destino
                        EmployeeDetailView(employee: employee)
                    } label: {
                        EmployeeRowView(employee: employee)
                    }

                }
            }
            .navigationTitle("Employees")
        }
    }
}

struct EmployeesView_Previews: PreviewProvider {
    static var previews: some View {
        EmployeesView()
    }
}
