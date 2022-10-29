.class public Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$EpType;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EpType"
.end annotation


# static fields
.field public static final DETECT_NOTHING:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$EpType;

.field public static final SPEECH_END:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$EpType;

.field public static final SPEECH_START:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$EpType;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$EpType;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$EpType;-><init>(I)V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$EpType;->DETECT_NOTHING:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$EpType;

    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$EpType;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$EpType;-><init>(I)V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$EpType;->SPEECH_END:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$EpType;

    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$EpType;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$EpType;-><init>(I)V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$EpType;->SPEECH_START:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$EpType;

    return-void
.end method

.method private constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$EpType;->a:I

    iput p1, p0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$EpType;->a:I

    return-void
.end method

.method public static getEpType(I)Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$EpType;
    .registers 2

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$EpType;->SPEECH_END:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$EpType;

    iget v0, v0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$EpType;->a:I

    if-ne v0, p0, :cond_9

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$EpType;->SPEECH_END:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$EpType;

    :goto_8
    return-object v0

    :cond_9
    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$EpType;->SPEECH_START:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$EpType;

    iget v0, v0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$EpType;->a:I

    if-ne v0, p0, :cond_12

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$EpType;->SPEECH_START:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$EpType;

    goto :goto_8

    :cond_12
    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$EpType;->DETECT_NOTHING:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$EpType;

    goto :goto_8
.end method
