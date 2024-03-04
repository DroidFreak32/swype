.class public Lcom/nuance/input/swypecorelib/ITextModel$UpdateResult;
.super Ljava/lang/Object;
.source "ITextModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/input/swypecorelib/ITextModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateResult"
.end annotation


# instance fields
.field public newBuffer:Ljava/lang/String;

.field public final newRegion:Lcom/nuance/input/swypecorelib/TextRegion;

.field public oldBuffer:Ljava/lang/String;

.field public final oldRegion:Lcom/nuance/input/swypecorelib/TextRegion;


# direct methods
.method public constructor <init>(Lcom/nuance/input/swypecorelib/TextRegion;Lcom/nuance/input/swypecorelib/TextRegion;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "oldRegion"    # Lcom/nuance/input/swypecorelib/TextRegion;
    .param p2, "newRegion"    # Lcom/nuance/input/swypecorelib/TextRegion;
    .param p3, "oldBuffer"    # Ljava/lang/String;
    .param p4, "newBuffer"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/nuance/input/swypecorelib/ITextModel$UpdateResult;->oldRegion:Lcom/nuance/input/swypecorelib/TextRegion;

    .line 49
    iput-object p2, p0, Lcom/nuance/input/swypecorelib/ITextModel$UpdateResult;->newRegion:Lcom/nuance/input/swypecorelib/TextRegion;

    .line 50
    iput-object p3, p0, Lcom/nuance/input/swypecorelib/ITextModel$UpdateResult;->oldBuffer:Ljava/lang/String;

    .line 51
    iput-object p4, p0, Lcom/nuance/input/swypecorelib/ITextModel$UpdateResult;->newBuffer:Ljava/lang/String;

    .line 52
    return-void
.end method
