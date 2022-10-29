.class final Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;
.super Ljava/lang/Object;
.source "MigrationDatabaseHelper.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/MigrationDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AttributesDbColumns"
.end annotation


# static fields
.field static final ATTRIBUTE_CUSTOM_DIMENSION_1:Ljava/lang/String;

.field static final ATTRIBUTE_CUSTOM_DIMENSION_10:Ljava/lang/String;

.field static final ATTRIBUTE_CUSTOM_DIMENSION_2:Ljava/lang/String;

.field static final ATTRIBUTE_CUSTOM_DIMENSION_3:Ljava/lang/String;

.field static final ATTRIBUTE_CUSTOM_DIMENSION_4:Ljava/lang/String;

.field static final ATTRIBUTE_CUSTOM_DIMENSION_5:Ljava/lang/String;

.field static final ATTRIBUTE_CUSTOM_DIMENSION_6:Ljava/lang/String;

.field static final ATTRIBUTE_CUSTOM_DIMENSION_7:Ljava/lang/String;

.field static final ATTRIBUTE_CUSTOM_DIMENSION_8:Ljava/lang/String;

.field static final ATTRIBUTE_CUSTOM_DIMENSION_9:Ljava/lang/String;

.field static final ATTRIBUTE_FORMAT:Ljava/lang/String; = "%s:%s"

.field static final ATTRIBUTE_KEY:Ljava/lang/String; = "attribute_key"

.field static final ATTRIBUTE_VALUE:Ljava/lang/String; = "attribute_value"

.field static final EVENTS_KEY_REF:Ljava/lang/String; = "events_key_ref"

.field static final TABLE_NAME:Ljava/lang/String; = "attributes"


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 605
    const-string/jumbo v0, "%s:%s"

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "com.localytics.android"

    aput-object v2, v1, v3

    const-string/jumbo v2, "custom_dimension_0"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_1:Ljava/lang/String;

    .line 609
    const-string/jumbo v0, "%s:%s"

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "com.localytics.android"

    aput-object v2, v1, v3

    const-string/jumbo v2, "custom_dimension_1"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_2:Ljava/lang/String;

    .line 613
    const-string/jumbo v0, "%s:%s"

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "com.localytics.android"

    aput-object v2, v1, v3

    const-string/jumbo v2, "custom_dimension_2"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_3:Ljava/lang/String;

    .line 617
    const-string/jumbo v0, "%s:%s"

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "com.localytics.android"

    aput-object v2, v1, v3

    const-string/jumbo v2, "custom_dimension_3"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_4:Ljava/lang/String;

    .line 621
    const-string/jumbo v0, "%s:%s"

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "com.localytics.android"

    aput-object v2, v1, v3

    const-string/jumbo v2, "custom_dimension_4"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_5:Ljava/lang/String;

    .line 625
    const-string/jumbo v0, "%s:%s"

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "com.localytics.android"

    aput-object v2, v1, v3

    const-string/jumbo v2, "custom_dimension_5"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_6:Ljava/lang/String;

    .line 629
    const-string/jumbo v0, "%s:%s"

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "com.localytics.android"

    aput-object v2, v1, v3

    const-string/jumbo v2, "custom_dimension_6"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_7:Ljava/lang/String;

    .line 633
    const-string/jumbo v0, "%s:%s"

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "com.localytics.android"

    aput-object v2, v1, v3

    const-string/jumbo v2, "custom_dimension_7"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_8:Ljava/lang/String;

    .line 637
    const-string/jumbo v0, "%s:%s"

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "com.localytics.android"

    aput-object v2, v1, v3

    const-string/jumbo v2, "custom_dimension_8"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_9:Ljava/lang/String;

    .line 641
    const-string/jumbo v0, "%s:%s"

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "com.localytics.android"

    aput-object v2, v1, v3

    const-string/jumbo v2, "custom_dimension_9"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/localytics/android/MigrationDatabaseHelper$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_10:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 650
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "This class is non-instantiable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
