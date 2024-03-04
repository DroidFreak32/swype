.class final Lcom/nuance/swype/preference/KeyboardListAdapter$Holder;
.super Ljava/lang/Object;
.source "KeyboardListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/preference/KeyboardListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/nuance/swype/preference/KeyboardListAdapter$Holder;->label:Landroid/widget/TextView;

    .line 92
    iput-object p2, p0, Lcom/nuance/swype/preference/KeyboardListAdapter$Holder;->checkable:Landroid/widget/Checkable;

    .line 93
    return-void
.end method
