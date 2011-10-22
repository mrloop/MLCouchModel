//
//  MLCouchModel.h
//
//  Created by Ewan McDougall on 17/10/2011.
//  Copyright (c) 2011 mrloop. 
//
//  Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file
//  except in compliance with the License. You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0
//  Unless required by applicable law or agreed to in writing, software distributed under the
//  License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND,
//  either express or implied. See the License for the specific language governing permissions
//  and limitations under the License.
//

#import <CouchCocoa/CouchCocoa.h>

typedef BOOL(^AttachPreRevBlock)();

@interface MLCouchModel : CouchModel

/** Should changes be automatically revisioned
    Defaults to NO */
@property BOOL attachPreRev;

/** Optional Block which is checked before a revison is created
    If it returns NO then a revison is not saved */
@property (copy) AttachPreRevBlock attachPreRevBlock;

@end
