//
//  ErrorView.swift
//  Scrumdinger
//
//  Created by 高嶋芙佳 on 2023/07/09.
//

import SwiftUI

struct ErrorView: View {
    let errorWrapper:ErrorWrapper
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        NavigationStack{
            VStack {
                Text("An error has occurred!")
                    .font(.title)
                    .padding(.bottom)
                Text(errorWrapper.error.localizedDescription)
                    .font(.headline)
                Text(errorWrapper.guidance)
                    .font(.caption)
                    .padding(.top)
                Spacer()
            }
            .padding()
            .background(.ultraThinMaterial)
            .cornerRadius(16)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button("Dissmiss"){
                        dismiss()
                    }
                }
            }
        }
    }
}

struct ErrorView_Previews: PreviewProvider {
    enum SampleError:Error{
        case errorRequired
    }
    
    static var wrapper:ErrorWrapper{
        ErrorWrapper(error:SampleError.errorRequired,
        guidance: "You can safely ignore this error")
    }
    static var previews: some View {
        ErrorView(errorWrapper: wrapper)
    }
}
