.class public final enum Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACScannerMediaStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ACScannerMediaStoreType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;

.field public static final enum ALL:Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;

.field public static final enum AUDIO_ALBUMS:Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;

.field public static final enum AUDIO_ARTISTS:Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;

.field public static final enum AUDIO_TITLE:Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;

.field public static final enum VIDEO_DESCRIPTION:Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;

.field public static final enum VIDEO_TITLE:Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v3}, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;->ALL:Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;

    const-string v1, "AUDIO_TITLE"

    invoke-direct {v0, v1, v4}, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;->AUDIO_TITLE:Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;

    const-string v1, "AUDIO_ARTISTS"

    invoke-direct {v0, v1, v5}, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;->AUDIO_ARTISTS:Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;

    const-string v1, "AUDIO_ALBUMS"

    invoke-direct {v0, v1, v6}, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;->AUDIO_ALBUMS:Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;

    const-string v1, "VIDEO_TITLE"

    invoke-direct {v0, v1, v7}, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;->VIDEO_TITLE:Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;

    const-string v1, "VIDEO_DESCRIPTION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;->VIDEO_DESCRIPTION:Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;->ALL:Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;->AUDIO_TITLE:Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;->AUDIO_ARTISTS:Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;->AUDIO_ALBUMS:Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;->VIDEO_TITLE:Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;->VIDEO_DESCRIPTION:Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;->$VALUES:[Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;
    .locals 1

    const-class v0, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;
    .locals 1

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;->$VALUES:[Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;

    invoke-virtual {v0}, [Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swypeconnect/ac/ACScannerMediaStore$ACScannerMediaStoreType;

    return-object v0
.end method
