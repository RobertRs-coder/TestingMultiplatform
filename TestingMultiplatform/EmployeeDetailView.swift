//
//  EmployeeDetailView.swift
//  TestingMultiplatform
//
//  Created by Roberto Rojo Sahuquillo on 1/11/22.
//

import SwiftUI

struct EmployeeDetailView: View {
    let employee: Employee
    
    var body: some View {
        ScrollView{
            VStack{
                
#if os(watchOS)
                Image(systemName: "person")
                    .resizable()
                    .frame(width: 50, height: 50)
                
#else
                
                Image(systemName: "person")
                    .resizable()
                    .frame(minWidth: 100, idealWidth: 200, maxWidth: .infinity, minHeight: 100, idealHeight: 200)
#endif
                VStack{
                    Text("\(employee.nombre)")
                        .padding()
                    Text("\(employee.apell1)")
                        .padding()
                    if let apell2 = employee.apell2{
                        Text("\(apell2)")
                            .padding()
                    }
                    Text("\(employee.edad)")
                        .padding()
                    Spacer()
                }
                .font(.title)
            }
        }
        .background(Color.gray)
        .foregroundColor(.white)
    }
}

struct EmployeeDeatilView_Previews: PreviewProvider {
    static var previews: some View {
        EmployeeDetailView(employee: Employee(id: "100", nombre: "Jose", apell1: "bustos", apell2: "Esteban", idPhoto: "", edad: 46))
    }
}

