//
//  ModelRow.swift
//  SnapKitTest
//
//  Created by Olka on 03.03.2021.
//

import Foundation

internal struct ModelRow
{

    internal var title: String
    internal var subtitle: String
    internal var date: String

    internal init(raw: ModelRowRaw)
    {
        self.title = raw.title
        self.subtitle = raw.subtitle
        self.date = raw.date
    }

}

internal struct ModelRowRaw: Decodable
{
    internal var title: String
    internal var subtitle: String
    internal var date: String
}

internal final class DataService
{
    internal func getData() -> ModelRow?
    {
        let decoder = JSONDecoder()
        guard let path = Bundle.main.path(forResource: "ModelRow", ofType: "json"),
              let data = try? Data(contentsOf: URL(fileURLWithPath: path)),
              let raw = try? decoder.decode(ModelRowRaw.self, from: data) else
        {
            return nil
        }
        return ModelRow(raw: raw)
    }
}
