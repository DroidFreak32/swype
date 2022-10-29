.class public Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$CharWriteEvent;
.super Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;
.source "T9WriteRecognizerListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CharWriteEvent"
.end annotation


# instance fields
.field public final mChar:C


# direct methods
.method public constructor <init>(C)V
    .registers 4
    .param p1, "ch"    # C

    .prologue
    .line 69
    const/4 v0, 0x2

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;-><init>(ILjava/lang/Object;)V

    .line 70
    iput-char p1, p0, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$CharWriteEvent;->mChar:C

    .line 71
    return-void
.end method
