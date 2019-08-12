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

.field public static final enum SUBMANAGER_CHINESE_DATABASES:Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

.field public static final enum SUBMANAGER_LIVING_LANGUAGE:Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

.field public static final enum SUBMANAGER_RESOURCES:Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

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


# instance fields
.field enabledByDefault:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    new-instance v1, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    const-string v2, "SUBMANAGER_LIVING_LANGUAGE"

    invoke-direct {v1, v2, v0, v0}, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->SUBMANAGER_LIVING_LANGUAGE:Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    new-instance v1, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    const-string v2, "SUBMANAGER_RESOURCES"

    invoke-direct {v1, v2, v3, v3}, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->SUBMANAGER_RESOURCES:Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    new-instance v1, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    const-string v2, "SUBMANAGER_CHINESE_DATABASES"

    invoke-direct {v1, v2, v4, v0}, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->SUBMANAGER_CHINESE_DATABASES:Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    new-instance v1, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    const-string v2, "SUBMANAGER_UPDATES"

    invoke-direct {v1, v2, v5, v0}, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->SUBMANAGER_UPDATES:Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    sget-object v2, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->SUBMANAGER_LIVING_LANGUAGE:Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    aput-object v2, v1, v0

    sget-object v2, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->SUBMANAGER_RESOURCES:Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    aput-object v2, v1, v3

    sget-object v2, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->SUBMANAGER_CHINESE_DATABASES:Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    aput-object v2, v1, v4

    sget-object v2, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->SUBMANAGER_UPDATES:Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    aput-object v2, v1, v5

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
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->enabledByDefault:Z

    return-void
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
