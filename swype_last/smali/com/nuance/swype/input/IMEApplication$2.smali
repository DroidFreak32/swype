.class Lcom/nuance/swype/input/IMEApplication$2;
.super Landroid/graphics/drawable/ColorDrawable;
.source "IMEApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/IMEApplication;->getThemedDrawableOrNoOp(I)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/IMEApplication;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/IMEApplication;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/nuance/swype/input/IMEApplication;
    .param p2, "x0"    # I

    .prologue
    .line 699
    iput-object p1, p0, Lcom/nuance/swype/input/IMEApplication$2;->this$0:Lcom/nuance/swype/input/IMEApplication;

    invoke-direct {p0, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getIntrinsicHeight()I
    .registers 2

    .prologue
    .line 707
    const/4 v0, 0x0

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .prologue
    .line 702
    const/4 v0, 0x0

    return v0
.end method
