.class public Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;
.super Ljava/lang/Object;
.source "KeyboardEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/KeyboardEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GridKeyInfo"
.end annotation


# instance fields
.field public text:Ljava/lang/CharSequence;

.field public width:I


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "keyWidth"    # I
    .param p2, "txt"    # Ljava/lang/CharSequence;

    .prologue
    .line 675
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 676
    iput p1, p0, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;->width:I

    .line 677
    iput-object p2, p0, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;->text:Ljava/lang/CharSequence;

    .line 678
    return-void
.end method
