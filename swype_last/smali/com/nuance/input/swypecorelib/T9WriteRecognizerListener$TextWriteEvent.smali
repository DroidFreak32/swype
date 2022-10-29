.class public Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$TextWriteEvent;
.super Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;
.source "T9WriteRecognizerListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextWriteEvent"
.end annotation


# instance fields
.field public final mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 59
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;-><init>(ILjava/lang/Object;)V

    .line 60
    iput-object p1, p0, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$TextWriteEvent;->mText:Ljava/lang/CharSequence;

    .line 61
    return-void
.end method
