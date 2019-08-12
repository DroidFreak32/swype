.class Lcom/nuance/swype/input/RecaptureHandler$EditorContext;
.super Ljava/lang/Object;
.source "RecaptureHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/RecaptureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EditorContext"
.end annotation


# instance fields
.field public final shouldRecapture:Z

.field public final startOffset:I

.field public final textBefore:Ljava/lang/String;

.field public final word:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "textBefore"    # Ljava/lang/String;
    .param p3, "shouldRecapture"    # Z
    .param p4, "startOffset"    # I

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/nuance/swype/input/RecaptureHandler$EditorContext;->word:Ljava/lang/String;

    .line 128
    iput-object p2, p0, Lcom/nuance/swype/input/RecaptureHandler$EditorContext;->textBefore:Ljava/lang/String;

    .line 129
    iput-boolean p3, p0, Lcom/nuance/swype/input/RecaptureHandler$EditorContext;->shouldRecapture:Z

    .line 130
    iput p4, p0, Lcom/nuance/swype/input/RecaptureHandler$EditorContext;->startOffset:I

    .line 131
    return-void
.end method
