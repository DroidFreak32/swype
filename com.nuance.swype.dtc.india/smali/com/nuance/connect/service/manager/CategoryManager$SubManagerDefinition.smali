.class public final enum Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/manager/CategoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SubManagerDefinition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

.field public static final enum SUBMANAGER_CATALOG:Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

.field public static final enum SUBMANAGER_CHINESE_DATABASES:Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

.field public static final enum SUBMANAGER_CUSTOM_CONFIG:Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

.field public static final enum SUBMANAGER_LIVING_LANGUAGE:Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

.field public static final enum SUBMANAGER_UPDATES:Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

.field static final map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;",
            ">;"
        }
    .end annotation
.end field

.field static values:[Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;


# instance fields
.field final enabledByDefault:Z

.field final types:[I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    new-instance v1, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    const-string/jumbo v2, "SUBMANAGER_LIVING_LANGUAGE"

    new-array v3, v6, [I

    fill-array-data v3, :array_0

    invoke-direct {v1, v2, v0, v0, v3}, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;-><init>(Ljava/lang/String;IZ[I)V

    sput-object v1, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->SUBMANAGER_LIVING_LANGUAGE:Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    new-instance v1, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    const-string/jumbo v2, "SUBMANAGER_CHINESE_DATABASES"

    new-array v3, v5, [I

    aput v6, v3, v0

    invoke-direct {v1, v2, v5, v0, v3}, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;-><init>(Ljava/lang/String;IZ[I)V

    sput-object v1, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->SUBMANAGER_CHINESE_DATABASES:Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    new-instance v1, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    const-string/jumbo v2, "SUBMANAGER_UPDATES"

    new-array v3, v5, [I

    const/4 v4, 0x5

    aput v4, v3, v0

    invoke-direct {v1, v2, v6, v0, v3}, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;-><init>(Ljava/lang/String;IZ[I)V

    sput-object v1, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->SUBMANAGER_UPDATES:Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    new-instance v1, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    const-string/jumbo v2, "SUBMANAGER_CATALOG"

    new-array v3, v5, [I

    const/4 v4, 0x6

    aput v4, v3, v0

    invoke-direct {v1, v2, v7, v0, v3}, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;-><init>(Ljava/lang/String;IZ[I)V

    sput-object v1, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->SUBMANAGER_CATALOG:Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    new-instance v1, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    const-string/jumbo v2, "SUBMANAGER_CUSTOM_CONFIG"

    new-array v3, v5, [I

    const/4 v4, 0x7

    aput v4, v3, v0

    invoke-direct {v1, v2, v8, v5, v3}, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;-><init>(Ljava/lang/String;IZ[I)V

    sput-object v1, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->SUBMANAGER_CUSTOM_CONFIG:Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    sget-object v2, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->SUBMANAGER_LIVING_LANGUAGE:Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    aput-object v2, v1, v0

    sget-object v2, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->SUBMANAGER_CHINESE_DATABASES:Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    aput-object v2, v1, v5

    sget-object v2, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->SUBMANAGER_UPDATES:Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    aput-object v2, v1, v6

    sget-object v2, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->SUBMANAGER_CATALOG:Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    aput-object v2, v1, v7

    sget-object v2, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->SUBMANAGER_CUSTOM_CONFIG:Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    aput-object v2, v1, v8

    sput-object v1, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->$VALUES:[Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->map:Ljava/util/HashMap;

    invoke-static {}, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->values()[Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    sget-object v4, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->map:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->values()[Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->values:[Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x3
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;IZ[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->enabledByDefault:Z

    iput-object p4, p0, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->types:[I

    return-void
.end method

.method static from(I)Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;
    .locals 9

    const/4 v2, 0x0

    sget-object v4, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->values:[Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v0, v4, v3

    iget-object v6, v0, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->types:[I

    array-length v7, v6

    move v1, v2

    :goto_1
    if-ge v1, v7, :cond_1

    aget v8, v6, v1

    if-ne v8, p0, :cond_0

    :goto_2
    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method static from(Ljava/lang/String;)Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;
    .locals 1

    sget-object v0, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;
    .locals 1

    const-class v0, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    return-object v0
.end method

.method public static values()[Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;
    .locals 1

    sget-object v0, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->$VALUES:[Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    invoke-virtual {v0}, [Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    return-object v0
.end method


# virtual methods
.method final getEnabledByDefault()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->enabledByDefault:Z

    return v0
.end method
