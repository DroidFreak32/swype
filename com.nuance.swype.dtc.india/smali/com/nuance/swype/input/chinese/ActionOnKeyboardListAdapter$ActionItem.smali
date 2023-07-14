.class public Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter$ActionItem;
.super Ljava/lang/Object;
.source "ActionOnKeyboardListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionItem"
.end annotation


# instance fields
.field public final actionName:Ljava/lang/String;

.field public final isChecked:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "checked"    # Z

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter$ActionItem;->actionName:Ljava/lang/String;

    .line 140
    iput-boolean p2, p0, Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter$ActionItem;->isChecked:Z

    .line 141
    return-void
.end method
