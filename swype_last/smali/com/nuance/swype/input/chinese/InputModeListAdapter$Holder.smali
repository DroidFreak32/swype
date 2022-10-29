.class Lcom/nuance/swype/input/chinese/InputModeListAdapter$Holder;
.super Ljava/lang/Object;
.source "InputModeListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/chinese/InputModeListAdapter;
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
    .registers 3
    .param p1, "label"    # Landroid/widget/TextView;
    .param p2, "button"    # Landroid/widget/Checkable;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/InputModeListAdapter$Holder;->label:Landroid/widget/TextView;

    .line 93
    iput-object p2, p0, Lcom/nuance/swype/input/chinese/InputModeListAdapter$Holder;->checkable:Landroid/widget/Checkable;

    .line 94
    return-void
.end method
