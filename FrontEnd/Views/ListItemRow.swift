import Foundation
import SwiftUI

struct ListItemRow: View {
    var data: ListItem
    
    var body: some View {
        VStack {
            Text(String(data.id))
            Text(data.name)
        }
    }
}

struct ListItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ListItemRow(data: ListItem(id: 1, name: "Jane Doe"))
    }
}
