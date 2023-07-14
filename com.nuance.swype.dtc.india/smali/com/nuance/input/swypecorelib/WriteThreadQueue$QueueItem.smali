.class public Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;
.super Ljava/lang/Object;
.source "WriteThreadQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/input/swypecorelib/WriteThreadQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueueItem"
.end annotation


# static fields
.field public static final ITEM_TYPE_ARC:I = 0x1

.field public static final ITEM_TYPE_CHAR:I = 0x3

.field public static final ITEM_TYPE_END_ARC_SEQUENCE:I = 0x7

.field public static final ITEM_TYPE_EXIT:I = 0x0

.field public static final ITEM_TYPE_KEY:I = 0x8

.field public static final ITEM_TYPE_RECOGNIZE:I = 0x2

.field public static final ITEM_TYPE_SETTINGS:I = 0x5

.field public static final ITEM_TYPE_SPEECH_RESULT:I = 0x9

.field public static final ITEM_TYPE_START_ARC_SEQUENCE:I = 0x6

.field public static final ITEM_TYPE_TEXT:I = 0x4


# instance fields
.field public final mData:Ljava/lang/Object;

.field public final mType:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput p1, p0, Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;->mType:I

    .line 200
    iput-object p2, p0, Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;->mData:Ljava/lang/Object;

    .line 201
    return-void
.end method
