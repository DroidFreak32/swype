.class Lcom/nuance/swype/input/CloudNetworkAdapter$Holder;
.super Ljava/lang/Object;
.source "CloudNetworkAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/CloudNetworkAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# instance fields
.field public final checkable:Landroid/widget/Checkable;

.field public final label:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/widget/Checkable;)V
    .locals 0
    .param p1, "label"    # Landroid/widget/TextView;
    .param p2, "button"    # Landroid/widget/Checkable;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/nuance/swype/input/CloudNetworkAdapter$Holder;->label:Landroid/widget/TextView;

    .line 85
    iput-object p2, p0, Lcom/nuance/swype/input/CloudNetworkAdapter$Holder;->checkable:Landroid/widget/Checkable;

    .line 86
    return-void
.end method
