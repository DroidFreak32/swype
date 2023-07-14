.class public final enum Lcom/nuance/input/swypecorelib/Shift$ShiftState;
.super Ljava/lang/Enum;
.source "Shift.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/input/swypecorelib/Shift;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShiftState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/input/swypecorelib/Shift$ShiftState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/input/swypecorelib/Shift$ShiftState;

.field public static final enum LOCKED:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

.field public static final enum OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

.field public static final enum ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;


# instance fields
.field private final index:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    const-string/jumbo v1, "OFF"

    invoke-direct {v0, v1, v2, v2}, Lcom/nuance/input/swypecorelib/Shift$ShiftState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .line 15
    new-instance v0, Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    const-string/jumbo v1, "ON"

    invoke-direct {v0, v1, v3, v3}, Lcom/nuance/input/swypecorelib/Shift$ShiftState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .line 16
    new-instance v0, Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    const-string/jumbo v1, "LOCKED"

    invoke-direct {v0, v1, v4, v4}, Lcom/nuance/input/swypecorelib/Shift$ShiftState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->LOCKED:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .line 12
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->LOCKED:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->$VALUES:[Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput p3, p0, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->index:I

    .line 23
    return-void
.end method

.method public static valueOf(I)Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 30
    packed-switch p0, :pswitch_data_0

    .line 37
    sget-object v0, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    :goto_0
    return-object v0

    .line 32
    :pswitch_0
    sget-object v0, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    goto :goto_0

    .line 34
    :pswitch_1
    sget-object v0, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->LOCKED:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    goto :goto_0

    .line 30
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    return-object v0
.end method

.method public static values()[Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->$VALUES:[Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v0}, [Lcom/nuance/input/swypecorelib/Shift$ShiftState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    return-object v0
.end method


# virtual methods
.method public final getIndex()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->index:I

    return v0
.end method
