.class public Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;
.super Ljava/lang/Object;
.source "T9WriteRecognizerListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WriteEvent"
.end annotation


# static fields
.field public static final TYPE_CANDIDATES:I = 0x1

.field public static final TYPE_CHAR:I = 0x2

.field public static final TYPE_INSTANT_GESTURE:I = 0x4

.field public static final TYPE_KEY:I = 0x5

.field public static final TYPE_SPEECH_RESULT:I = 0x6

.field public static final TYPE_TEXT:I = 0x3


# instance fields
.field public final mData:Ljava/lang/Object;

.field public final mType:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;->mType:I

    .line 32
    iput-object p2, p0, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;->mData:Ljava/lang/Object;

    .line 33
    return-void
.end method
