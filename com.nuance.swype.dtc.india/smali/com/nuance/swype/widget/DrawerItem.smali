.class public final Lcom/nuance/swype/widget/DrawerItem;
.super Ljava/lang/Object;
.source "DrawerItem.java"


# instance fields
.field public ItemName:Ljava/lang/String;

.field imgResID:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "itemName"    # Ljava/lang/String;
    .param p2, "imgResID"    # I

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/nuance/swype/widget/DrawerItem;->ItemName:Ljava/lang/String;

    .line 11
    iput p2, p0, Lcom/nuance/swype/widget/DrawerItem;->imgResID:I

    .line 12
    return-void
.end method
