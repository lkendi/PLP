#!/usr/bin/python3

def calculate_discount(price, discount_percent):
    """Calculates the final price after applying a discount"""
    price = float(price)
    discount_percent = float(discount_percent)
    if discount_percent >= 20:
        price = (100 - discount_percent)/100 * price
    else:
        pass
    return price

if __name__ == "__main__":
    input_price = input("Enter item price: ")
    input_discount = input("Enter discount percentage: ")
    final_price = calculate_discount(input_price, input_discount)
    print(f"Final Price: {final_price}")
