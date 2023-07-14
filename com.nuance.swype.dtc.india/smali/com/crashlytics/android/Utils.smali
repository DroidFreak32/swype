.class final Lcom/crashlytics/android/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public static capFileCount(Ljava/io/File;Ljava/io/FilenameFilter;ILjava/util/Comparator;)V
    .locals 7
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "filter"    # Ljava/io/FilenameFilter;
    .param p2, "maxAllowed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/FilenameFilter;",
            "I",
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p3, "fileComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/io/File;>;"
    invoke-virtual {p0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v5

    .line 21
    .local v5, "sessionFiles":[Ljava/io/File;
    if-eqz v5, :cond_0

    array-length v6, v5

    if-le v6, p2, :cond_0

    .line 23
    invoke-static {v5, p3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 24
    array-length v2, v5

    .line 25
    .local v2, "i":I
    move-object v0, v5

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v5

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 27
    .local v1, "file":Ljava/io/File;
    if-gt v2, p2, :cond_1

    .line 34
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "i":I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    return-void

    .line 30
    .restart local v0    # "arr$":[Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "i":I
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 31
    add-int/lit8 v2, v2, -0x1

    .line 25
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
