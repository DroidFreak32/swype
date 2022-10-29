.class public abstract Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;
.super Ljava/lang/Object;
.source "PdxValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Bytes;,
        Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$String;,
        Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Integer;,
        Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;,
        Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$DictionaryBase;,
        Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$SeqenceEnd;,
        Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$SeqenceChunk;,
        Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$SeqenceStart;,
        Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;
    }
.end annotation


# static fields
.field public static final TYPE_BYTES:I = 0x4

.field public static final TYPE_DICT:I = 0x2

.field public static final TYPE_INT:I = 0x1

.field public static final TYPE_SEQ:I = 0x3

.field public static final TYPE_SEQ_CHUNK:I = 0x6

.field public static final TYPE_SEQ_END:I = 0x7

.field public static final TYPE_SEQ_START:I = 0x5

.field public static final TYPE_STRING:I


# instance fields
.field private final _type:I


# direct methods
.method constructor <init>(I)V
    .registers 2
    .param p1, "type"    # I

    .prologue
    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 461
    iput p1, p0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;->_type:I

    .line 462
    return-void
.end method


# virtual methods
.method public final getType()I
    .registers 2

    .prologue
    .line 480
    iget v0, p0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;->_type:I

    return v0
.end method

.method public abstract toString(Ljava/lang/String;)Ljava/lang/String;
.end method
