//
//  MLCouchModel.m
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

#import "MLCouchModel.h"

@implementation MLCouchModel

@synthesize attachPreRevBlock;
@dynamic attachPreRev;

- (RESTOperation*)save{
  if(self.attachPreRev && (!attachPreRevBlock || attachPreRevBlock())){
    [self createAttachmentWithName:self.document.currentRevisionID type:@"appliction/json" body:[RESTBody dataWithJSONObject:self.document.properties]];
  }
  return [super save];
}


@end
