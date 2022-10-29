.class final Lcom/nuance/swype/widget/CustomDrawerAdapter$DrawerItemHolder;
.super Ljava/lang/Object;
.source "CustomDrawerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/widget/CustomDrawerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DrawerItemHolder"
.end annotation


# instance fields
.field ItemName:Landroid/widget/TextView;

.field divider:Landroid/view/View;

.field drawerItem:Landroid/widget/LinearLayout;

.field icon:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/nuance/swype/widget/CustomDrawerAdapter$DrawerItemHolder;-><init>()V

    return-void
.end method
