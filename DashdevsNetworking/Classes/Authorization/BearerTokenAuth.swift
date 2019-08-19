//
//  BearerTokenAuth.swift
//  DashdevsNetworking
//
//  Copyright (c) 2019 dashdevs.com. All rights reserved.
//

/// This struct is used for updating URLRequestComponents with bearer token authorization
public struct BearerTokenAuth: Authorization {
    /// Token without **Bearer** prefix
    public let token: String
    
    public init(_ token: String) {
        self.token = token
    }
    
    /// Adding **Authorization** header to URLRequestComponents
    public func authorize(_ requestComponents: inout URLRequestComponents) {
        let authHeader = HTTPHeader(field: "Authorization", value: "Bearer \(token)")
        requestComponents.headers.append(authHeader)
    }
}