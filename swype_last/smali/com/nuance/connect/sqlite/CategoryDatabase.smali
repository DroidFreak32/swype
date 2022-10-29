.class public Lcom/nuance/connect/sqlite/CategoryDatabase;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/sqlite/CategoryDatabase$CategoryDatabaseSchema;,
        Lcom/nuance/connect/sqlite/CategoryDatabase$CustomConfigCategory;,
        Lcom/nuance/connect/sqlite/CategoryDatabase$PlatformUpdateCategory;,
        Lcom/nuance/connect/sqlite/CategoryDatabase$LivingLanguageWithVariantCategory;,
        Lcom/nuance/connect/sqlite/CategoryDatabase$LivingLanguageCategory;,
        Lcom/nuance/connect/sqlite/CategoryDatabase$ChineseAddonCategory;,
        Lcom/nuance/connect/sqlite/CategoryDatabase$CatalogCategory;,
        Lcom/nuance/connect/sqlite/CategoryDatabase$CommonCategory;
    }
.end annotation


# static fields
.field public static final CATEGORY_COUNT_OLD:Ljava/lang/String; = "CATEGORY_COUNT_OLD"

.field private static final CATEGORY_NAME:Ljava/lang/String; = "ccc"

.field public static final CHECKSUM:Ljava/lang/String; = "CHECKSUM"

.field private static final DB_VERSION:I = 0x1

.field public static final DELETE_CATEGORY:Ljava/lang/String; = "DELETE_CATEGORY"

.field public static final FIRST_TIME_DOWNLOADED:Ljava/lang/String; = "FIRST_TIME_DOWNLOADED"

.field public static final LAST_UPDATE_AVAILABLE:Ljava/lang/String; = "LAST_UPDATE_AVAILABLE"

.field public static final LAST_UPDATE_FETCHED:Ljava/lang/String; = "LAST_UPDATE_FETCHED"

.field public static final LAST_USED_AT:Ljava/lang/String; = "LAST_USED_AT"

.field public static final LL_DELETE_CLEAR:Ljava/lang/String; = "LL_DELETE_CLEAR"

.field public static final SUBSCRIBED:Ljava/lang/String; = "SUBSCRIBED"

.field public static final TYPE_CATALOG:I = 0x6

.field public static final TYPE_CHINESE_ADDON_DICTIONARY:I = 0x2

.field public static final TYPE_CUSTOM_CONFIGURATION:I = 0x7

.field public static final TYPE_KEYBOARD_LANGUAGE_ONLY:I = 0x1

.field public static final TYPE_KEYBOARD_PLUS_LANGUAGE_VARIANT:I = 0x3

.field public static final TYPE_UPDATES:I = 0x5

.field public static final UNSUBSCRIBE_PENDING:Ljava/lang/String; = "UNSUBSCRIBE_PENDING"

.field public static final URL:Ljava/lang/String; = "URL"

.field public static final USER_INITIATED:Ljava/lang/String; = "USER_INITIATED"

.field private static final catalogCategory:Lcom/nuance/connect/sqlite/CategoryDatabase$CatalogCategory;

.field private static final chineseAddonCategory:Lcom/nuance/connect/sqlite/CategoryDatabase$ChineseAddonCategory;

.field private static final customConfigCategory:Lcom/nuance/connect/sqlite/CategoryDatabase$CustomConfigCategory;

.field private static instance:Lcom/nuance/connect/sqlite/CategoryDatabase;

.field private static final livingLanguageCategory:Lcom/nuance/connect/sqlite/CategoryDatabase$LivingLanguageCategory;

.field private static final livingLanguageWithVariantCategory:Lcom/nuance/connect/sqlite/CategoryDatabase$LivingLanguageWithVariantCategory;

.field private static final log:Lcom/nuance/connect/util/Logger$Log;

.field private static final platformUpdateCategory:Lcom/nuance/connect/sqlite/CategoryDatabase$PlatformUpdateCategory;

.field private static schemaInstance:Lcom/nuance/connect/sqlite/CategoryDatabase$CategoryDatabaseSchema;


# instance fields
.field private final catalogTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

.field private final chineseAddonTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

.field private final codec:Lcom/nuance/connect/sqlite/MasterDatabase$Codec;

.field private final customConfigTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

.field private final database:Lcom/nuance/connect/sqlite/MasterDatabase;

.field private final livingLangTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

.field private final livingLangWithVarTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

.field private final platformUpdateTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

.field private final schemaMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/sqlite/CategoryDatabase$CommonCategory;",
            ">;"
        }
    .end annotation
.end field

.field private final tableMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;",
            ">;"
        }
    .end annotation
.end field

.field private final types:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    const-class v1, Lcom/nuance/connect/sqlite/CategoryDatabase;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/sqlite/CategoryDatabase;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v0, Lcom/nuance/connect/sqlite/CategoryDatabase$CatalogCategory;

    invoke-direct {v0, v2}, Lcom/nuance/connect/sqlite/CategoryDatabase$CatalogCategory;-><init>(Lcom/nuance/connect/sqlite/CategoryDatabase$1;)V

    sput-object v0, Lcom/nuance/connect/sqlite/CategoryDatabase;->catalogCategory:Lcom/nuance/connect/sqlite/CategoryDatabase$CatalogCategory;

    new-instance v0, Lcom/nuance/connect/sqlite/CategoryDatabase$ChineseAddonCategory;

    invoke-direct {v0, v2}, Lcom/nuance/connect/sqlite/CategoryDatabase$ChineseAddonCategory;-><init>(Lcom/nuance/connect/sqlite/CategoryDatabase$1;)V

    sput-object v0, Lcom/nuance/connect/sqlite/CategoryDatabase;->chineseAddonCategory:Lcom/nuance/connect/sqlite/CategoryDatabase$ChineseAddonCategory;

    new-instance v0, Lcom/nuance/connect/sqlite/CategoryDatabase$LivingLanguageCategory;

    invoke-direct {v0, v2}, Lcom/nuance/connect/sqlite/CategoryDatabase$LivingLanguageCategory;-><init>(Lcom/nuance/connect/sqlite/CategoryDatabase$1;)V

    sput-object v0, Lcom/nuance/connect/sqlite/CategoryDatabase;->livingLanguageCategory:Lcom/nuance/connect/sqlite/CategoryDatabase$LivingLanguageCategory;

    new-instance v0, Lcom/nuance/connect/sqlite/CategoryDatabase$LivingLanguageWithVariantCategory;

    invoke-direct {v0, v2}, Lcom/nuance/connect/sqlite/CategoryDatabase$LivingLanguageWithVariantCategory;-><init>(Lcom/nuance/connect/sqlite/CategoryDatabase$1;)V

    sput-object v0, Lcom/nuance/connect/sqlite/CategoryDatabase;->livingLanguageWithVariantCategory:Lcom/nuance/connect/sqlite/CategoryDatabase$LivingLanguageWithVariantCategory;

    new-instance v0, Lcom/nuance/connect/sqlite/CategoryDatabase$PlatformUpdateCategory;

    invoke-direct {v0, v2}, Lcom/nuance/connect/sqlite/CategoryDatabase$PlatformUpdateCategory;-><init>(Lcom/nuance/connect/sqlite/CategoryDatabase$1;)V

    sput-object v0, Lcom/nuance/connect/sqlite/CategoryDatabase;->platformUpdateCategory:Lcom/nuance/connect/sqlite/CategoryDatabase$PlatformUpdateCategory;

    new-instance v0, Lcom/nuance/connect/sqlite/CategoryDatabase$CustomConfigCategory;

    invoke-direct {v0, v2}, Lcom/nuance/connect/sqlite/CategoryDatabase$CustomConfigCategory;-><init>(Lcom/nuance/connect/sqlite/CategoryDatabase$1;)V

    sput-object v0, Lcom/nuance/connect/sqlite/CategoryDatabase;->customConfigCategory:Lcom/nuance/connect/sqlite/CategoryDatabase$CustomConfigCategory;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->tableMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->schemaMap:Ljava/util/Map;

    invoke-static {p1}, Lcom/nuance/connect/sqlite/MasterDatabase;->from(Landroid/content/Context;)Lcom/nuance/connect/sqlite/MasterDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->database:Lcom/nuance/connect/sqlite/MasterDatabase;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->database:Lcom/nuance/connect/sqlite/MasterDatabase;

    invoke-static {p1}, Lcom/nuance/connect/sqlite/CategoryDatabase$CategoryDatabaseSchema;->from(Landroid/content/Context;)Lcom/nuance/connect/sqlite/CategoryDatabase$CategoryDatabaseSchema;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/sqlite/MasterDatabase;->connectDatabase(Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseSchema;)V

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->database:Lcom/nuance/connect/sqlite/MasterDatabase;

    sget-object v1, Lcom/nuance/connect/sqlite/CategoryDatabase;->catalogCategory:Lcom/nuance/connect/sqlite/CategoryDatabase$CatalogCategory;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/sqlite/MasterDatabase;->getTableDatabase(Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;)Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->catalogTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->database:Lcom/nuance/connect/sqlite/MasterDatabase;

    sget-object v1, Lcom/nuance/connect/sqlite/CategoryDatabase;->chineseAddonCategory:Lcom/nuance/connect/sqlite/CategoryDatabase$ChineseAddonCategory;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/sqlite/MasterDatabase;->getTableDatabase(Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;)Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->chineseAddonTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->database:Lcom/nuance/connect/sqlite/MasterDatabase;

    sget-object v1, Lcom/nuance/connect/sqlite/CategoryDatabase;->livingLanguageCategory:Lcom/nuance/connect/sqlite/CategoryDatabase$LivingLanguageCategory;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/sqlite/MasterDatabase;->getTableDatabase(Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;)Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->livingLangTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->database:Lcom/nuance/connect/sqlite/MasterDatabase;

    sget-object v1, Lcom/nuance/connect/sqlite/CategoryDatabase;->livingLanguageWithVariantCategory:Lcom/nuance/connect/sqlite/CategoryDatabase$LivingLanguageWithVariantCategory;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/sqlite/MasterDatabase;->getTableDatabase(Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;)Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->livingLangWithVarTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->database:Lcom/nuance/connect/sqlite/MasterDatabase;

    sget-object v1, Lcom/nuance/connect/sqlite/CategoryDatabase;->platformUpdateCategory:Lcom/nuance/connect/sqlite/CategoryDatabase$PlatformUpdateCategory;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/sqlite/MasterDatabase;->getTableDatabase(Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;)Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->platformUpdateTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->database:Lcom/nuance/connect/sqlite/MasterDatabase;

    sget-object v1, Lcom/nuance/connect/sqlite/CategoryDatabase;->customConfigCategory:Lcom/nuance/connect/sqlite/CategoryDatabase$CustomConfigCategory;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/sqlite/MasterDatabase;->getTableDatabase(Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;)Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->customConfigTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->tableMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->catalogTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v1}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->catalogTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->tableMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->chineseAddonTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v1}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->chineseAddonTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->tableMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->livingLangTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v1}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->livingLangTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->tableMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->livingLangWithVarTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v1}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->livingLangWithVarTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->tableMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->platformUpdateTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v1}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->platformUpdateTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->tableMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->customConfigTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v1}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->customConfigTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->schemaMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->catalogTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v1}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/sqlite/CategoryDatabase;->catalogCategory:Lcom/nuance/connect/sqlite/CategoryDatabase$CatalogCategory;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->schemaMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->chineseAddonTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v1}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/sqlite/CategoryDatabase;->chineseAddonCategory:Lcom/nuance/connect/sqlite/CategoryDatabase$ChineseAddonCategory;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->schemaMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->livingLangTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v1}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/sqlite/CategoryDatabase;->livingLanguageCategory:Lcom/nuance/connect/sqlite/CategoryDatabase$LivingLanguageCategory;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->schemaMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->livingLangWithVarTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v1}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/sqlite/CategoryDatabase;->livingLanguageWithVariantCategory:Lcom/nuance/connect/sqlite/CategoryDatabase$LivingLanguageWithVariantCategory;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->schemaMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->platformUpdateTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v1}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/sqlite/CategoryDatabase;->platformUpdateCategory:Lcom/nuance/connect/sqlite/CategoryDatabase$PlatformUpdateCategory;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->schemaMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->customConfigTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v1}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/sqlite/CategoryDatabase;->customConfigCategory:Lcom/nuance/connect/sqlite/CategoryDatabase$CustomConfigCategory;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->catalogTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v0}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->getCodec()Lcom/nuance/connect/sqlite/MasterDatabase$Codec;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->codec:Lcom/nuance/connect/sqlite/MasterDatabase$Codec;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->tableMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->types:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$1000()Lcom/nuance/connect/sqlite/CategoryDatabase$LivingLanguageWithVariantCategory;
    .registers 1

    sget-object v0, Lcom/nuance/connect/sqlite/CategoryDatabase;->livingLanguageWithVariantCategory:Lcom/nuance/connect/sqlite/CategoryDatabase$LivingLanguageWithVariantCategory;

    return-object v0
.end method

.method static synthetic access$1100()Lcom/nuance/connect/sqlite/CategoryDatabase$PlatformUpdateCategory;
    .registers 1

    sget-object v0, Lcom/nuance/connect/sqlite/CategoryDatabase;->platformUpdateCategory:Lcom/nuance/connect/sqlite/CategoryDatabase$PlatformUpdateCategory;

    return-object v0
.end method

.method static synthetic access$1200()Lcom/nuance/connect/sqlite/CategoryDatabase$CustomConfigCategory;
    .registers 1

    sget-object v0, Lcom/nuance/connect/sqlite/CategoryDatabase;->customConfigCategory:Lcom/nuance/connect/sqlite/CategoryDatabase$CustomConfigCategory;

    return-object v0
.end method

.method static synthetic access$600()Lcom/nuance/connect/sqlite/CategoryDatabase$CategoryDatabaseSchema;
    .registers 1

    sget-object v0, Lcom/nuance/connect/sqlite/CategoryDatabase;->schemaInstance:Lcom/nuance/connect/sqlite/CategoryDatabase$CategoryDatabaseSchema;

    return-object v0
.end method

.method static synthetic access$602(Lcom/nuance/connect/sqlite/CategoryDatabase$CategoryDatabaseSchema;)Lcom/nuance/connect/sqlite/CategoryDatabase$CategoryDatabaseSchema;
    .registers 1

    sput-object p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->schemaInstance:Lcom/nuance/connect/sqlite/CategoryDatabase$CategoryDatabaseSchema;

    return-object p0
.end method

.method static synthetic access$700()Lcom/nuance/connect/sqlite/CategoryDatabase$CatalogCategory;
    .registers 1

    sget-object v0, Lcom/nuance/connect/sqlite/CategoryDatabase;->catalogCategory:Lcom/nuance/connect/sqlite/CategoryDatabase$CatalogCategory;

    return-object v0
.end method

.method static synthetic access$800()Lcom/nuance/connect/sqlite/CategoryDatabase$ChineseAddonCategory;
    .registers 1

    sget-object v0, Lcom/nuance/connect/sqlite/CategoryDatabase;->chineseAddonCategory:Lcom/nuance/connect/sqlite/CategoryDatabase$ChineseAddonCategory;

    return-object v0
.end method

.method static synthetic access$900()Lcom/nuance/connect/sqlite/CategoryDatabase$LivingLanguageCategory;
    .registers 1

    sget-object v0, Lcom/nuance/connect/sqlite/CategoryDatabase;->livingLanguageCategory:Lcom/nuance/connect/sqlite/CategoryDatabase$LivingLanguageCategory;

    return-object v0
.end method

.method private convertCursorPositionToProps(Landroid/database/Cursor;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    :goto_6
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    if-ge v0, v2, :cond_1a

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1a
    const-string/jumbo v0, "ccc"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public static declared-synchronized from(Landroid/content/Context;)Lcom/nuance/connect/sqlite/CategoryDatabase;
    .registers 4

    const-class v1, Lcom/nuance/connect/sqlite/CategoryDatabase;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/nuance/connect/sqlite/CategoryDatabase;->instance:Lcom/nuance/connect/sqlite/CategoryDatabase;

    if-nez v0, :cond_12

    new-instance v0, Lcom/nuance/connect/sqlite/CategoryDatabase;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/nuance/connect/sqlite/CategoryDatabase;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/nuance/connect/sqlite/CategoryDatabase;->instance:Lcom/nuance/connect/sqlite/CategoryDatabase;

    :cond_12
    sget-object v0, Lcom/nuance/connect/sqlite/CategoryDatabase;->instance:Lcom/nuance/connect/sqlite/CategoryDatabase;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    monitor-exit v1

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getCategoriesFromCursor(Landroid/database/Cursor;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    if-eqz p1, :cond_1a

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    :goto_b
    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    goto :goto_b

    :cond_1a
    return-object v1
.end method

.method private hasCategory(Ljava/lang/String;Ljava/util/Collection;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const/4 v9, 0x0

    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ccc=\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->database:Lcom/nuance/connect/sqlite/MasterDatabase;

    invoke-virtual {v2, p1}, Lcom/nuance/connect/sqlite/MasterDatabase;->getDatabaseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const-string/jumbo v1, "ccc"

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_86

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "ccc"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const-string/jumbo v5, "ccc"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_61
    .catchall {:try_start_6 .. :try_end_61} :catchall_62

    goto :goto_3a

    :catchall_62
    move-exception v0

    move-object v1, v9

    :goto_64
    if-eqz v1, :cond_69

    :try_start_66
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_69
    throw v0
    :try_end_6a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_66 .. :try_end_6a} :catch_6a
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_6a} :catch_b4

    :catch_6a
    move-exception v0

    sget-object v1, Lcom/nuance/connect/sqlite/CategoryDatabase;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "hasCategory failed; message: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :cond_84
    :goto_84
    const/4 v0, 0x0

    :goto_85
    return v0

    :cond_86
    :try_start_86
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v10, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->database:Lcom/nuance/connect/sqlite/MasterDatabase;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->codec:Lcom/nuance/connect/sqlite/MasterDatabase$Codec;

    invoke-virtual {v1, v0, v2, v3}, Lcom/nuance/connect/sqlite/MasterDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;Lcom/nuance/connect/sqlite/MasterDatabase$Codec;)Landroid/database/Cursor;
    :try_end_a0
    .catchall {:try_start_86 .. :try_end_a0} :catchall_62

    move-result-object v1

    :try_start_a1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_a4
    .catchall {:try_start_a1 .. :try_end_a4} :catchall_cf

    move-result v0

    if-lez v0, :cond_ae

    if-eqz v1, :cond_ac

    :try_start_a9
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_ac
    const/4 v0, 0x1

    goto :goto_85

    :cond_ae
    if-eqz v1, :cond_84

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_b3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a9 .. :try_end_b3} :catch_6a
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_b3} :catch_b4

    goto :goto_84

    :catch_b4
    move-exception v0

    sget-object v1, Lcom/nuance/connect/sqlite/CategoryDatabase;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "hasCategory failed; message: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_84

    :catchall_cf
    move-exception v0

    goto :goto_64
.end method

.method private propWrite(Ljava/lang/String;Landroid/content/ContentValues;)V
    .registers 6

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->types:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/sqlite/CategoryDatabase;->hasCategory(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0, p1, v0, p2}, Lcom/nuance/connect/sqlite/CategoryDatabase;->propWrite(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V

    :cond_1b
    return-void
.end method

.method private propWrite(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V
    .registers 12

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p3}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_21
    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->database:Lcom/nuance/connect/sqlite/MasterDatabase;

    invoke-virtual {v0, p2}, Lcom/nuance/connect/sqlite/MasterDatabase;->getTableDatabase(Ljava/lang/String;)Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    move-result-object v2

    if-nez v2, :cond_3f

    sget-object v0, Lcom/nuance/connect/sqlite/CategoryDatabase;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "propWrite() table is null: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :goto_3e
    return-void

    :cond_3f
    :try_start_3f
    invoke-interface {v2}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->beginTransaction()V

    const-string/jumbo v0, "ccc=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {v2, v1, v0, v3}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v4, v0

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gez v0, :cond_83

    sget-object v0, Lcom/nuance/connect/sqlite/CategoryDatabase;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "save failed to insert property for category: "

    const-string/jumbo v4, "; values: "

    invoke-interface {v0, v3, p1, v4, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_61
    .catchall {:try_start_3f .. :try_end_61} :catchall_87

    :goto_61
    :try_start_61
    invoke-interface {v2}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->endTransaction()V
    :try_end_64
    .catch Landroid/database/SQLException; {:try_start_61 .. :try_end_64} :catch_65
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_64} :catch_8c

    goto :goto_3e

    :catch_65
    move-exception v0

    sget-object v1, Lcom/nuance/connect/sqlite/CategoryDatabase;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "propWrite() Error in [CategoryDatabase] category("

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, p1, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3e

    :cond_83
    :try_start_83
    invoke-interface {v2}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->setTransactionSuccessful()V
    :try_end_86
    .catchall {:try_start_83 .. :try_end_86} :catchall_87

    goto :goto_61

    :catchall_87
    move-exception v0

    :try_start_88
    invoke-interface {v2}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->endTransaction()V

    throw v0
    :try_end_8c
    .catch Landroid/database/SQLException; {:try_start_88 .. :try_end_8c} :catch_65
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_8c} :catch_8c

    :catch_8c
    move-exception v0

    sget-object v1, Lcom/nuance/connect/sqlite/CategoryDatabase;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "propWrite() Error in [CategoryDatabase] category("

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, p1, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3e
.end method

.method private propsWrite(Ljava/lang/String;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "ccc"

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->types:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->database:Lcom/nuance/connect/sqlite/MasterDatabase;

    invoke-virtual {v2, v0}, Lcom/nuance/connect/sqlite/MasterDatabase;->getTableDatabase(Ljava/lang/String;)Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    move-result-object v2

    if-nez v2, :cond_36

    sget-object v2, Lcom/nuance/connect/sqlite/CategoryDatabase;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "propsWrite() table is null: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_c

    :cond_36
    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/sqlite/CategoryDatabase;->hasCategory(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    :try_start_3c
    invoke-interface {v2}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->beginTransaction()V

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_67
    .catchall {:try_start_3c .. :try_end_67} :catchall_68

    goto :goto_4c

    :catchall_68
    move-exception v0

    :try_start_69
    invoke-interface {v2}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->endTransaction()V

    throw v0
    :try_end_6d
    .catch Landroid/database/SQLException; {:try_start_69 .. :try_end_6d} :catch_6d
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6d} :catch_af

    :catch_6d
    move-exception v0

    sget-object v1, Lcom/nuance/connect/sqlite/CategoryDatabase;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "propsWrite() Error in [CategoryDatabase] category("

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, p1, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_8a
    return-void

    :cond_8b
    :try_start_8b
    const-string/jumbo v0, "ccc"

    invoke-virtual {v3, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ccc=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v1, v4

    invoke-interface {v2, v3, v0, v1}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_cd

    sget-object v0, Lcom/nuance/connect/sqlite/CategoryDatabase;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "save failed to insert property for category: "

    const-string/jumbo v4, "; values: "

    invoke-interface {v0, v1, p1, v4, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_ab
    .catchall {:try_start_8b .. :try_end_ab} :catchall_68

    :goto_ab
    :try_start_ab
    invoke-interface {v2}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->endTransaction()V
    :try_end_ae
    .catch Landroid/database/SQLException; {:try_start_ab .. :try_end_ae} :catch_6d
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_ae} :catch_af

    goto :goto_8a

    :catch_af
    move-exception v0

    sget-object v1, Lcom/nuance/connect/sqlite/CategoryDatabase;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "propsWrite() Error in [CategoryDatabase] category("

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, p1, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8a

    :cond_cd
    :try_start_cd
    invoke-interface {v2}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->setTransactionSuccessful()V
    :try_end_d0
    .catchall {:try_start_cd .. :try_end_d0} :catchall_68

    goto :goto_ab

    :cond_d1
    sget-object v0, Lcom/nuance/connect/sqlite/CategoryDatabase;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Did not find id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_8a
.end method


# virtual methods
.method public addCategory(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z
    .registers 12

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->database:Lcom/nuance/connect/sqlite/MasterDatabase;

    invoke-virtual {v0, p2}, Lcom/nuance/connect/sqlite/MasterDatabase;->getTableDatabase(Ljava/lang/String;)Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    move-result-object v2

    if-nez v2, :cond_1f

    sget-object v0, Lcom/nuance/connect/sqlite/CategoryDatabase;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "table is null: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :goto_1e
    return v1

    :cond_1f
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p3}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c

    :cond_40
    :try_start_40
    const-string/jumbo v0, "ccc"

    invoke-virtual {v3, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->beginTransaction()V

    const/4 v0, 0x0

    const/4 v4, 0x5

    invoke-interface {v2, v0, v3, v4}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->insertWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_78

    invoke-interface {v2}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->setTransactionSuccessful()V
    :try_end_58
    .catch Landroid/database/SQLException; {:try_start_40 .. :try_end_58} :catch_5e
    .catchall {:try_start_40 .. :try_end_58} :catchall_73

    const/4 v0, 0x1

    :goto_59
    invoke-interface {v2}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->endTransaction()V

    :goto_5c
    move v1, v0

    goto :goto_1e

    :catch_5e
    move-exception v0

    :try_start_5f
    sget-object v3, Lcom/nuance/connect/sqlite/CategoryDatabase;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "addCategory failed to add the category: ("

    const-string/jumbo v5, ") SQL message"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, p1, v5, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6e
    .catchall {:try_start_5f .. :try_end_6e} :catchall_73

    invoke-interface {v2}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->endTransaction()V

    move v0, v1

    goto :goto_5c

    :catchall_73
    move-exception v0

    invoke-interface {v2}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->endTransaction()V

    throw v0

    :cond_78
    move v0, v1

    goto :goto_59
.end method

.method public addCategory(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_29

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_d

    :cond_29
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_39
    invoke-virtual {p0, p1, p2, v2}, Lcom/nuance/connect/sqlite/CategoryDatabase;->addCategory(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    return v0
.end method

.method public allCategoryIDs()Ljava/util/Set;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v1, 0x0

    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const-string/jumbo v2, "ccc"

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->types:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v5, "ccc"

    aput-object v5, v2, v4

    const-string/jumbo v5, "ccc"

    move-object v6, v1

    move-object v7, v1

    move-object v8, v1

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_42
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v9, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v0, v2, v1, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->database:Lcom/nuance/connect/sqlite/MasterDatabase;

    iget-object v3, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->codec:Lcom/nuance/connect/sqlite/MasterDatabase$Codec;

    invoke-virtual {v2, v0, v1, v3}, Lcom/nuance/connect/sqlite/MasterDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;Lcom/nuance/connect/sqlite/MasterDatabase$Codec;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_5a
    invoke-direct {p0, v0}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getCategoriesFromCursor(Landroid/database/Cursor;)Ljava/util/Set;
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_64

    move-result-object v1

    if-eqz v0, :cond_63

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_63
    return-object v1

    :catchall_64
    move-exception v1

    if-eqz v0, :cond_6a

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6a
    throw v1
.end method

.method public allCategoryIDs(Ljava/lang/String;)Ljava/util/Set;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->database:Lcom/nuance/connect/sqlite/MasterDatabase;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/sqlite/MasterDatabase;->getTableDatabase(Ljava/lang/String;)Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    move-result-object v0

    if-nez v0, :cond_22

    sget-object v0, Lcom/nuance/connect/sqlite/CategoryDatabase;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "allCategoryIDs: table is null: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    :cond_21
    :goto_21
    return-object v0

    :cond_22
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "ccc"

    aput-object v4, v2, v1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    invoke-interface/range {v0 .. v8}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->query(Z[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_33
    invoke-direct {p0, v1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getCategoriesFromCursor(Landroid/database/Cursor;)Ljava/util/Set;
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_3d

    move-result-object v0

    if-eqz v1, :cond_21

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_21

    :catchall_3d
    move-exception v0

    if-eqz v1, :cond_43

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_43
    throw v0
.end method

.method public allWithProperty(Ljava/lang/String;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->types:Ljava/util/Set;

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/sqlite/CategoryDatabase;->allWithProperty(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public allWithProperty(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/nuance/connect/sqlite/CategoryDatabase$1;

    invoke-direct {v0, p0, p1}, Lcom/nuance/connect/sqlite/CategoryDatabase$1;-><init>(Lcom/nuance/connect/sqlite/CategoryDatabase;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->allWithPropertyMap(Ljava/util/Map;Ljava/util/Collection;Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public allWithPropertyMap(Ljava/util/Map;Ljava/util/Collection;Z)Ljava/util/Map;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const/4 v9, 0x0

    :try_start_6
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "ccc"

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_23
    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_40

    const-string/jumbo v4, ""

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6e

    :cond_40
    sget-object v1, Lcom/nuance/connect/sqlite/CategoryDatabase;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "ignoring a blank or null key in allWithPropertyMap"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V
    :try_end_48
    .catchall {:try_start_6 .. :try_end_48} :catchall_49

    goto :goto_23

    :catchall_49
    move-exception v0

    move-object v1, v9

    :goto_4b
    if-eqz v1, :cond_50

    :try_start_4d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_50
    throw v0
    :try_end_51
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4d .. :try_end_51} :catch_51
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_51} :catch_140

    :catch_51
    move-exception v0

    sget-object v1, Lcom/nuance/connect/sqlite/CategoryDatabase;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "allWithProperty failed; message: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :goto_6b
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    :cond_6d
    :goto_6d
    return-object v0

    :cond_6e
    :try_start_6e
    iget-object v4, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->database:Lcom/nuance/connect/sqlite/MasterDatabase;

    invoke-virtual {v4, v2}, Lcom/nuance/connect/sqlite/MasterDatabase;->getActualColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_95

    if-nez p3, :cond_23

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_8b

    const-string/jumbo v1, " AND "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8b
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " IS NOT NULL"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_23

    :cond_95
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_a1

    const-string/jumbo v4, " AND "

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a1
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, " = \'"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->database:Lcom/nuance/connect/sqlite/MasterDatabase;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Lcom/nuance/connect/sqlite/MasterDatabase;->getDatabaseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_23

    :cond_c3
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_c7
    :goto_c7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_114

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->schemaMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/sqlite/CategoryDatabase$CommonCategory;

    invoke-virtual {v1}, Lcom/nuance/connect/sqlite/CategoryDatabase$CommonCategory;->getTableProperties()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_c7

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v10}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v10, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "ccc"

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c7

    :cond_114
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v11, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->database:Lcom/nuance/connect/sqlite/MasterDatabase;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->codec:Lcom/nuance/connect/sqlite/MasterDatabase$Codec;

    invoke-virtual {v1, v0, v2, v3}, Lcom/nuance/connect/sqlite/MasterDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;Lcom/nuance/connect/sqlite/MasterDatabase$Codec;)Landroid/database/Cursor;
    :try_end_12e
    .catchall {:try_start_6e .. :try_end_12e} :catchall_49

    move-result-object v1

    if-eqz v1, :cond_137

    :try_start_131
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_15c

    :cond_137
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;
    :try_end_139
    .catchall {:try_start_131 .. :try_end_139} :catchall_180

    if-eqz v1, :cond_6d

    :try_start_13b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_13e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13b .. :try_end_13e} :catch_51
    .catch Ljava/lang/Exception; {:try_start_13b .. :try_end_13e} :catch_140

    goto/16 :goto_6d

    :catch_140
    move-exception v0

    sget-object v1, Lcom/nuance/connect/sqlite/CategoryDatabase;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "allWithProperty failed; message: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto/16 :goto_6b

    :cond_15c
    :try_start_15c
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_161
    const-string/jumbo v2, "ccc"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->convertCursorPositionToProps(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_176
    .catchall {:try_start_15c .. :try_end_176} :catchall_180

    move-result v2

    if-nez v2, :cond_161

    if-eqz v1, :cond_6d

    :try_start_17b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_17e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17b .. :try_end_17e} :catch_51
    .catch Ljava/lang/Exception; {:try_start_17b .. :try_end_17e} :catch_140

    goto/16 :goto_6d

    :catchall_180
    move-exception v0

    goto/16 :goto_4b
.end method

.method public containsProperty(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->schemaMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->schemaMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/sqlite/CategoryDatabase$CommonCategory;

    invoke-virtual {v0}, Lcom/nuance/connect/sqlite/CategoryDatabase$CommonCategory;->getTableProperties()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    :goto_18
    return v0

    :cond_19
    sget-object v0, Lcom/nuance/connect/sqlite/CategoryDatabase;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "containsProperty() table not found: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_18
.end method

.method public deleteAll()V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->tableMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v0}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->deleteAll()Z

    goto :goto_a

    :cond_20
    return-void
.end method

.method public deleteCategory(Ljava/lang/String;)Z
    .registers 12

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->types:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_84

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/sqlite/CategoryDatabase;->hasCategory(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->database:Lcom/nuance/connect/sqlite/MasterDatabase;

    invoke-virtual {v4, v0}, Lcom/nuance/connect/sqlite/MasterDatabase;->getTableDatabase(Ljava/lang/String;)Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    move-result-object v4

    if-nez v4, :cond_38

    sget-object v4, Lcom/nuance/connect/sqlite/CategoryDatabase;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "deleteCategory() table is null: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_8

    :cond_38
    :try_start_38
    invoke-interface {v4}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->beginTransaction()V

    const-string/jumbo v0, "ccc=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-interface {v4, v0, v5}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v6, v0

    const-wide/16 v8, 0x1

    cmp-long v0, v6, v8

    if-eqz v0, :cond_63

    sget-object v0, Lcom/nuance/connect/sqlite/CategoryDatabase;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v5, "deleteCategory error removing the category: ("

    const-string/jumbo v8, ") index = "

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v5, p1, v8, v6}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5e
    .catch Landroid/database/SQLException; {:try_start_38 .. :try_end_5e} :catch_6b
    .catchall {:try_start_38 .. :try_end_5e} :catchall_7f

    invoke-interface {v4}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->endTransaction()V

    move v0, v1

    :goto_62
    return v0

    :cond_63
    :try_start_63
    invoke-interface {v4}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->setTransactionSuccessful()V
    :try_end_66
    .catch Landroid/database/SQLException; {:try_start_63 .. :try_end_66} :catch_6b
    .catchall {:try_start_63 .. :try_end_66} :catchall_7f

    invoke-interface {v4}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->endTransaction()V

    move v0, v2

    goto :goto_62

    :catch_6b
    move-exception v0

    :try_start_6c
    sget-object v5, Lcom/nuance/connect/sqlite/CategoryDatabase;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v6, "deleteCategory error removing the category: ("

    const-string/jumbo v7, ") SQL message"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v6, p1, v7, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7b
    .catchall {:try_start_6c .. :try_end_7b} :catchall_7f

    invoke-interface {v4}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->endTransaction()V

    goto :goto_8

    :catchall_7f
    move-exception v0

    invoke-interface {v4}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->endTransaction()V

    throw v0

    :cond_84
    move v0, v1

    goto :goto_62
.end method

.method public getBoolProp(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getCategorySet(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Map;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const/4 v9, 0x0

    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_9
    move-object v0, v9

    :cond_a
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->database:Lcom/nuance/connect/sqlite/MasterDatabase;

    invoke-virtual {v0, p2}, Lcom/nuance/connect/sqlite/MasterDatabase;->getTableDatabase(Ljava/lang/String;)Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    move-result-object v0

    if-nez v0, :cond_2a

    sget-object v0, Lcom/nuance/connect/sqlite/CategoryDatabase;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getCategorySet() table is null: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    move-object v0, v9

    goto :goto_a

    :cond_2a
    :try_start_2a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_76

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_48

    const-string/jumbo v2, " OR "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_48
    const-string/jumbo v2, "ccc = ?"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4e
    .catchall {:try_start_2a .. :try_end_4e} :catchall_4f

    goto :goto_33

    :catchall_4f
    move-exception v0

    move-object v1, v9

    :goto_51
    if-eqz v1, :cond_56

    :try_start_53
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_56
    throw v0
    :try_end_57
    .catch Landroid/database/SQLException; {:try_start_53 .. :try_end_57} :catch_57
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_57} :catch_c4

    :catch_57
    move-exception v0

    sget-object v1, Lcom/nuance/connect/sqlite/CategoryDatabase;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "getCategorySet() SQLException in [CategoryDatabase] categories("

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, p1, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_74
    move-object v0, v9

    goto :goto_a

    :cond_76
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_78
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v0 .. v8}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->query(Z[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_8f
    .catchall {:try_start_78 .. :try_end_8f} :catchall_4f

    move-result-object v1

    if-eqz v1, :cond_98

    :try_start_92
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_95
    .catchall {:try_start_92 .. :try_end_95} :catchall_e2

    move-result v0

    if-nez v0, :cond_a0

    :cond_98
    if-eqz v1, :cond_9d

    :try_start_9a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_9d
    .catch Landroid/database/SQLException; {:try_start_9a .. :try_end_9d} :catch_57
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_9d} :catch_c4

    :cond_9d
    move-object v0, v9

    goto/16 :goto_a

    :cond_a0
    :try_start_a0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_a5
    const-string/jumbo v2, "ccc"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->convertCursorPositionToProps(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_ba
    .catchall {:try_start_a0 .. :try_end_ba} :catchall_e2

    move-result v2

    if-nez v2, :cond_a5

    if-eqz v1, :cond_a

    :try_start_bf
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_c2
    .catch Landroid/database/SQLException; {:try_start_bf .. :try_end_c2} :catch_57
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_c2} :catch_c4

    goto/16 :goto_a

    :catch_c4
    move-exception v0

    sget-object v1, Lcom/nuance/connect/sqlite/CategoryDatabase;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "getCategorySet() Exception in [CategoryDatabase] categories("

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, p1, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_74

    :catchall_e2
    move-exception v0

    goto/16 :goto_51
.end method

.method public getCategoryType(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->types:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/sqlite/CategoryDatabase;->hasCategory(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    :goto_18
    return-object v0

    :cond_19
    const-string/jumbo v0, ""

    goto :goto_18
.end method

.method public getIntProp(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    const/high16 v0, -0x80000000

    :try_start_2
    invoke-virtual {p0, p1, p2}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_9} :catch_b

    move-result v0

    :goto_a
    return v0

    :catch_b
    move-exception v1

    goto :goto_a
.end method

.method public getLongProp(Ljava/lang/String;Ljava/lang/String;)J
    .registers 6

    const-wide/high16 v0, -0x8000000000000000L

    :try_start_2
    invoke-virtual {p0, p1, p2}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_9} :catch_b

    move-result-wide v0

    :goto_a
    return-wide v0

    :catch_b
    move-exception v2

    goto :goto_a
.end method

.method public getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 16

    const/4 v10, 0x0

    const/4 v12, 0x1

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->types:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_9
    :goto_9
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_159

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->schemaMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;->getTableProperties()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1, v1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->hasCategory(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->database:Lcom/nuance/connect/sqlite/MasterDatabase;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/sqlite/MasterDatabase;->getTableDatabase(Ljava/lang/String;)Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    move-result-object v0

    if-nez v0, :cond_4e

    sget-object v0, Lcom/nuance/connect/sqlite/CategoryDatabase;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getProp() table is null: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_9

    :cond_4e
    :try_start_4e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ccc = ?"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "ccc"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    aput-object p2, v2, v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v0 .. v8}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->query(Z[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_77
    .catchall {:try_start_4e .. :try_end_77} :catchall_151

    move-result-object v6

    if-eqz v6, :cond_80

    :try_start_7a
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_15b

    move-result v0

    if-nez v0, :cond_a8

    :cond_80
    if-eqz v6, :cond_9

    :try_start_82
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_85
    .catch Landroid/database/SQLException; {:try_start_82 .. :try_end_85} :catch_86
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_85} :catch_12f

    goto :goto_9

    :catch_86
    move-exception v0

    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    sget-object v1, Lcom/nuance/connect/sqlite/CategoryDatabase;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "getProp() SQLException in [CategoryDatabase] category("

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, p1, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_a8
    :try_start_a8
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-le v0, v12, :cond_111

    sget-object v0, Lcom/nuance/connect/sqlite/CategoryDatabase;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getProp() Unexpected error in CategoryDatabase; count="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "; category="

    const-string/jumbo v4, "; columns="

    invoke-interface {v6}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v3, p1

    invoke-interface/range {v0 .. v5}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d6
    move v0, v10

    :goto_d7
    invoke-interface {v6}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    if-ge v0, v1, :cond_108

    sget-object v1, Lcom/nuance/connect/sqlite/CategoryDatabase;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "    Column: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d7

    :cond_108
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_d6

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_111
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_128

    invoke-interface {v6}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-le v0, v12, :cond_128

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_121
    .catchall {:try_start_a8 .. :try_end_121} :catchall_15b

    move-result-object v0

    if-eqz v6, :cond_127

    :try_start_124
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_127
    :goto_127
    return-object v0

    :cond_128
    if-eqz v6, :cond_9

    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_12d
    .catch Landroid/database/SQLException; {:try_start_124 .. :try_end_12d} :catch_86
    .catch Ljava/lang/Exception; {:try_start_124 .. :try_end_12d} :catch_12f

    goto/16 :goto_9

    :catch_12f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Lcom/nuance/connect/sqlite/CategoryDatabase;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "getProp() Exception in [CategoryDatabase] category("

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, p1, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_9

    :catchall_151
    move-exception v0

    move-object v1, v9

    :goto_153
    if-eqz v1, :cond_158

    :try_start_155
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_158
    throw v0
    :try_end_159
    .catch Landroid/database/SQLException; {:try_start_155 .. :try_end_159} :catch_86
    .catch Ljava/lang/Exception; {:try_start_155 .. :try_end_159} :catch_12f

    :cond_159
    move-object v0, v9

    goto :goto_127

    :catchall_15b
    move-exception v0

    move-object v1, v6

    goto :goto_153
.end method

.method public getProps(Ljava/lang/String;)Ljava/util/Map;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->types:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_7
    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->database:Lcom/nuance/connect/sqlite/MasterDatabase;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/sqlite/MasterDatabase;->getTableDatabase(Ljava/lang/String;)Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    move-result-object v0

    if-nez v0, :cond_32

    sget-object v0, Lcom/nuance/connect/sqlite/CategoryDatabase;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getProps() table is null: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_7

    :cond_32
    :try_start_32
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ccc = ?"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v0 .. v8}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->query(Z[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_50
    .catchall {:try_start_32 .. :try_end_50} :catchall_8a

    move-result-object v1

    if-eqz v1, :cond_59

    :try_start_53
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_b6

    move-result v0

    if-nez v0, :cond_80

    :cond_59
    if-eqz v1, :cond_7

    :try_start_5b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5e
    .catch Landroid/database/SQLException; {:try_start_5b .. :try_end_5e} :catch_5f
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5e} :catch_92

    goto :goto_7

    :catch_5f
    move-exception v0

    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    sget-object v1, Lcom/nuance/connect/sqlite/CategoryDatabase;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "getProps() SQLException in [CategoryDatabase] category("

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, p1, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_7

    :cond_80
    :try_start_80
    invoke-direct {p0, v1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->convertCursorPositionToProps(Landroid/database/Cursor;)Ljava/util/Map;
    :try_end_83
    .catchall {:try_start_80 .. :try_end_83} :catchall_b6

    move-result-object v0

    if-eqz v1, :cond_89

    :try_start_86
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_89
    :goto_89
    return-object v0

    :catchall_8a
    move-exception v0

    move-object v1, v9

    :goto_8c
    if-eqz v1, :cond_91

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_91
    throw v0
    :try_end_92
    .catch Landroid/database/SQLException; {:try_start_86 .. :try_end_92} :catch_5f
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_92} :catch_92

    :catch_92
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Lcom/nuance/connect/sqlite/CategoryDatabase;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "getProps() Exception in [CategoryDatabase] category("

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, p1, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_b4
    move-object v0, v9

    goto :goto_89

    :catchall_b6
    move-exception v0

    goto :goto_8c
.end method

.method public getStep(Ljava/lang/String;)I
    .registers 3

    const-string/jumbo v0, "STEP"

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTableForType(I)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->schemaMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/sqlite/CategoryDatabase$CommonCategory;

    invoke-virtual {v1}, Lcom/nuance/connect/sqlite/CategoryDatabase$CommonCategory;->getCategoryType()I

    move-result v1

    if-ne v1, p1, :cond_a

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_28
    return-object v0

    :cond_29
    sget-object v0, Lcom/nuance/connect/sqlite/CategoryDatabase;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getTableForType type not found in list of schemas: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_28
.end method

.method public getTypeForTable(Ljava/lang/String;)I
    .registers 5

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->schemaMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->schemaMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/sqlite/CategoryDatabase$CommonCategory;

    invoke-virtual {v0}, Lcom/nuance/connect/sqlite/CategoryDatabase$CommonCategory;->getCategoryType()I

    move-result v0

    :goto_14
    return v0

    :cond_15
    sget-object v0, Lcom/nuance/connect/sqlite/CategoryDatabase;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getTypeForTable type not found in list of schemas: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_14
.end method

.method public hasCategory(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase;->types:Ljava/util/Set;

    invoke-direct {p0, p1, v0}, Lcom/nuance/connect/sqlite/CategoryDatabase;->hasCategory(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public hasCategory(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1, v0}, Lcom/nuance/connect/sqlite/CategoryDatabase;->hasCategory(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    invoke-virtual {p0}, Lcom/nuance/connect/sqlite/CategoryDatabase;->allCategoryIDs()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isInstalled(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getStep(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_9

    const/4 v0, 0x1

    :cond_9
    return v0
.end method

.method public listFromPropEquals(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->allWithProperty(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_11
    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    :try_start_1d
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_11

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_38
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_38} :catch_39

    goto :goto_11

    :catch_39
    move-exception v0

    goto :goto_11

    :cond_3b
    return-object v2
.end method

.method public listFromSteps(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v0, "STEP"

    invoke-virtual {p0, v0}, Lcom/nuance/connect/sqlite/CategoryDatabase;->allWithProperty(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_14
    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    :try_start_20
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string/jumbo v4, "STEP"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_44
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_44} :catch_45

    goto :goto_14

    :catch_45
    move-exception v0

    goto :goto_14

    :cond_47
    return-object v2
.end method

.method public removeProp(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/nuance/connect/sqlite/CategoryDatabase;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setProp(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/nuance/connect/sqlite/CategoryDatabase;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setProp(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 6

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/nuance/connect/sqlite/CategoryDatabase;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    if-nez p3, :cond_e

    invoke-virtual {v0, p2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    :goto_a
    invoke-direct {p0, p1, v0}, Lcom/nuance/connect/sqlite/CategoryDatabase;->propWrite(Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void

    :cond_e
    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method

.method public setProp(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    invoke-static {p3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/nuance/connect/sqlite/CategoryDatabase;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setProps(Ljava/lang/String;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/sqlite/CategoryDatabase;->propsWrite(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public setStep(Ljava/lang/String;I)V
    .registers 4

    const-string/jumbo v0, "STEP"

    invoke-virtual {p0, p1, v0, p2}, Lcom/nuance/connect/sqlite/CategoryDatabase;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
