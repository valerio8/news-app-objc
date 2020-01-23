//
//  SettingsTableViewController.m
//  News App
//
//  Created by Valera Shilo on 22.01.2020.
//  Copyright © 2020 Valera Shilo. All rights reserved.
//

#import "SettingsTableViewController.h"
#import "ContentManager.h"
#import "SettingsPresenter.h"

@interface SettingsTableViewController ()

@property (strong, nonatomic) id<SettingsPresenterProtocol> presenter;

@end

@implementation SettingsTableViewController

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self){
        self.presenter = [[SettingsPresenter alloc] initWithContentManager:[ContentManager sharedManager]];
        [self initializeForm];
    }
    return self;
}

- (void)initializeForm {
    XLFormDescriptor * form;
    XLFormSectionDescriptor * section;
    XLFormRowDescriptor * row;
    
    form = [XLFormDescriptor formDescriptorWithTitle:@"Content Settings"];
    
    section = [XLFormSectionDescriptor formSection];
    [form addFormSection:section];
    
    row = [XLFormRowDescriptor formRowDescriptorWithTag:nil rowType:XLFormRowDescriptorTypeSelectorPickerView];
    row.title = @"Category";
    row.value = self.presenter.currentCategory;
    row.selectorOptions = self.presenter.categoriesList;;
    [section addFormRow:row];
    
    section = [XLFormSectionDescriptor formSection];
    [form addFormSection:section];

    row = [XLFormRowDescriptor formRowDescriptorWithTag:nil rowType:XLFormRowDescriptorTypeSelectorPickerView];
    row.title = @"Country";
    row.value = self.presenter.currentCountry;
    row.selectorOptions = self.presenter.countriesList;
    [section addFormRow:row];
    
    form.delegate = self;
    
    self.form = form;
}

- (void)formRowDescriptorValueHasChanged:(XLFormRowDescriptor *)formRow oldValue:(id)oldValue newValue:(id)newValue {
    if ([formRow.title isEqualToString:@"Category"]) {
        [self.presenter setCurrentCategory:newValue];
    } else if ([formRow.title isEqualToString:@"Country"]) {
        [self.presenter setCurrentCountry:newValue];
    }
}

@end
