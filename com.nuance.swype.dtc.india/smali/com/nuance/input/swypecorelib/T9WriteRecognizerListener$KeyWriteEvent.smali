.class public Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$KeyWriteEvent;
.super Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;
.source "T9WriteRecognizerListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyWriteEvent"
.end annotation


# instance fields
.field public final mKey:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 79
    const/4 v0, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;-><init>(ILjava/lang/Object;)V

    .line 80
    iput p1, p0, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$KeyWriteEvent;->mKey:I

    .line 81
    return-void
.end method
