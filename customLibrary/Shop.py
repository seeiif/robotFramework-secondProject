from robot.api.deco import library, keyword
from robot.libraries.BuiltIn import BuiltIn


@library
class Shop:
    def __init__(self):
        # Getting an instance of SeleniumLibrary
        self.selLib = BuiltIn().get_library_instance("SeleniumLibrary")

    # A simple keyword that prints "hello"
    @keyword
    def hello_world(self):
        print("hello")

    # This keyword adds items to the cart based on the phone names provided
    @keyword
    def add_items_to_cart_and_checkout(self, phoneNames):
        # Fetch all product titles on the page
        product_titles = self.selLib.get_webelements("css=.card-title")
        i = 1

        # Loop through all product titles and check if they are in the provided phone names list
        for title in product_titles:
            product_name = title.text
            if product_name in phoneNames:
                # If the product is found, click the corresponding "Add to Cart" button
                self.selLib.click_button(f"xpath=(//*[@class='card-footer'])[{i}]/button")
            i += 1

        self.selLib.click_link("css:li.active a")