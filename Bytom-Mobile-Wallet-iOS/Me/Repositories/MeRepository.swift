//
//  MeRepository.swift
//  Bytom-Mobile-Wallet-iOS
//
//  Created by ldp on 2018/6/25.
//  Copyright © 2018年 曲终叶落. All rights reserved.
//

import Foundation
import PromiseKit

struct MeRepository {
    func getListTransactions(address: String, assetID: String, pageNumber: Int, pageSize: Int) -> Promise<GetTransactionsRequest> {
        return URLSession.shared.POST(NetWorks.api + "list-transactions", json: ["address":address, "asset_id":assetID,"page_number": pageNumber, "page_size":pageSize]).asObject()
    }
}
