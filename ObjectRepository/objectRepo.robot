*** Variables ***

#Consent Form

${consent_element}  //*[@id="onetrust-accept-btn-handler"]

#Login Screen
${email_address}     //input[@placeholder='E-Mail Adresse']
${password_locator}          //input[@placeholder='Passwort (mind. 6 Zeichen)']
${consent_checkbox}    //input[@name='isClubNewsletterSubscribed']
${loginButton}      //button[@type='submit']

#Products

${Möbel}    //span[text()='Möbel']
${add_wishlist}    //div[text()='Modulares Ecksofa Lennon in Beige']/parent::div/parent::div/div[@class='BadgesGrid__BadgesGridLayout-kqvz9j-0 dimkmn GenericProductBadges__ProductBadgesGrid-z1yx94-0 bSrkAe']/div[2]
${Wunschliste}     //span[text()='Wunschliste']
${Wunschliste_counter}     //span[@data-testid='wishlist-counter']
${delete_product}     //button[@class='blockListProduct__delete qaBlockListProduct__delete']
${verify_wishlist_removal}     //p[@class='wishlistNoProducts__text wishlistNoProducts__text_bold']