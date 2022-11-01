//
//  EmployeeRowView.swift
//  TestingMultiplatform
//
//  Created by Roberto Rojo Sahuquillo on 1/11/22.
//

import SwiftUI

struct EmployeeRowView: View {
    let employee: Employee
    
    var body: some View {
        VStack{
            Spacer()
            Image(systemName: "person")
                .resizable()
                .frame(width: 100, height: 100)
            
            #if os(watchOS)
            HStack{
                Text("\(employee.nombre)")
            }
            #else
            
                HStack{
                    Spacer()
                    Text("\(employee.nombre)")
                    Text("\(employee.apell1)")
                    if let apell2 = employee.apell2{
                        Text("\(apell2)")
                    }
                    Spacer()
                }
            #endif
            Spacer()
        }
        .padding()
        
    }
}

struct EmpleadoRowView_Previews: PreviewProvider {
    static var previews: some View {
        EmployeeRowView(employee: Employee(id: "2", nombre: "Jose", apell1: "Bustos", apell2: "Esteban", idPhoto: "", edad: 40))
    }
}
