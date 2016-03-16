package com.home.model;

/**
 * @author Itzhak
 */
public class Item {

    private int itemId;
    private String model;
    private String memory;
    private String color;

    public int getItemId() {
        return itemId;
    }

    public void setItemId(int itemId) {
        this.itemId = itemId;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getMemory() {
        return memory;
    }

    public void setMemory(String memory) {
        this.memory = memory;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    @Override
    public String toString() {
        return "Item{" +
                "itemId=" + itemId +
                ", model='" + model + '\'' +
                ", memory='" + memory + '\'' +
                ", color='" + color + '\'' +
                '}';
    }
}
