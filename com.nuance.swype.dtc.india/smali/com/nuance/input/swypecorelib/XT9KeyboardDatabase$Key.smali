.class public final Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;
.super Ljava/lang/Object;
.source "XT9KeyboardDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Key"
.end annotation


# instance fields
.field public final codes:[C

.field public final height:I

.field public final multitapChars:[C

.field public final shiftCodes:[C

.field public final type:I

.field public final width:I

.field public final x:I

.field public final y:I


# direct methods
.method public constructor <init>([C[C[CIIIII)V
    .locals 0
    .param p1, "codes"    # [C
    .param p2, "shiftCodes"    # [C
    .param p3, "multitapChars"    # [C
    .param p4, "type"    # I
    .param p5, "x"    # I
    .param p6, "y"    # I
    .param p7, "width"    # I
    .param p8, "height"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p5, p0, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;->x:I

    .line 38
    iput p6, p0, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;->y:I

    .line 39
    iput p7, p0, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;->width:I

    .line 40
    iput p8, p0, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;->height:I

    .line 41
    iput p4, p0, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;->type:I

    .line 42
    iput-object p1, p0, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;->codes:[C

    .line 43
    iput-object p2, p0, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;->shiftCodes:[C

    .line 44
    iput-object p3, p0, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;->multitapChars:[C

    .line 45
    return-void
.end method
