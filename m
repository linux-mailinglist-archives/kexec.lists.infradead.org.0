Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B7A87DED1
	for <lists+kexec@lfdr.de>; Thu,  1 Aug 2019 17:25:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HXf5ndjH2KM0wYCUfKRk/rOu+G8kCrsXQxA86I09Brk=; b=H4S+T1a1/AsMqA
	0QPTzLSZHEK2vC2L6g2fYSRjvL7MpPOzjm7IH0whIIrTK7HnHmjbln5oA+DM/u+kjzaOG1xXUCJow
	OU2snVjkQOhX650cdoI+emoer6vz1uMlaS8rD34eygutRGAgKIIxzkoUKyMTP5a+KwpVIbP5z8xtU
	QWacb4XtkzuE4RFhV4z1bJh6+dhmDkCBVk82QwK/wLSDKZOq6WkVJloN6238m4PUSAEaytHB8J7K1
	33Tq6o+8ptlJb6YRamck/uYolNmIhmJ0EuH4vkXPAYeqXHJrsUWRoGyyzA61lt921d7AJCndzk6mr
	Jw/WC4LhNe8ggWx0AmdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htCxm-0003uu-H6; Thu, 01 Aug 2019 15:25:54 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htCwi-0001QP-IO
 for kexec@lists.infradead.org; Thu, 01 Aug 2019 15:24:53 +0000
Received: by mail-qt1-x842.google.com with SMTP id l9so70569151qtu.6
 for <kexec@lists.infradead.org>; Thu, 01 Aug 2019 08:24:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=R6/SxEPTIzTdE6W1Hx7mOa8dC1CKLzuuI3rK/m6KyjA=;
 b=JNZ/KgcYfb4dNpim+k2MOWWLFaur4nKwhjsoOoTJ+D9swbQ7WakCBsSE79BZJK5VUd
 TjaR5Fn6DG/7FS5/YK0BwQFEPkSVX+wxFzBFXOJHef1uJRGPIeUsvsLHJfXvbd1LGc58
 jSLve3ailjdQ/fS1b0OEFemmlrJeEh9hMrTcExWeVX2lAEBSKx0SywyPQV1LbcXFN+Qh
 bYGCXdm6pxLTRxasMToe/hcej2jpVrw92NRmHdvnSvfeQnxY+fK8ThuKP47ARnpprP5N
 YVNaR7JIkuxX+NzvFrcGZfJzUE20a9ytsxMazVrOY+8n2NC9P0G+nZoK1RtL9Sk5qgaS
 P7cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=R6/SxEPTIzTdE6W1Hx7mOa8dC1CKLzuuI3rK/m6KyjA=;
 b=EjF+bRVO4fqFI7UBzJHYY0nahp7MtpvAj+d6l39Dq9J3l3FwVoubJqpUvXevN6pDPo
 RAnosalAq7l5XBzlwDz+LtvMCj3UvnfF6iEl5/I1xL6vnfP7qn1cAw1OwBVGHIEHX1l3
 SxOJaFAZenhGPj4fkH8KlyKw60lW362Wuxn+kKXkkvgMnfD4HnpSd1cQWSyuhbw0K6Aq
 4gbtgtg237kkmPpxcHlX+MZcOb5y52B1gOTfUEZ1Y7cSwRN4DjdZavXDvE0elNXkHNnS
 lXB3pBLiun0Fi/3CQ1NyE0Ipu37s8X36lSXPZsLHbtYunC/rEkP1vthVHKJjsz1iRzgb
 uv5w==
X-Gm-Message-State: APjAAAWHqdFoV/G8pvNRal0Plb0NDwqJGHY9tIZEn9UUdzC769/MYIVb
 fODqcl/AtqUUpTosmIoiVWkJh/7p
X-Google-Smtp-Source: APXvYqyqwg6VPHMO7J3bHZKnQ3bO0qH12fclYw4spACWNbJ1vUFrzBMweyq01CQXeNwF7FoAnD2faQ==
X-Received: by 2002:a0c:99e6:: with SMTP id y38mr92593639qve.42.1564673087348; 
 Thu, 01 Aug 2019 08:24:47 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id o5sm30899952qkf.10.2019.08.01.08.24.46
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 01 Aug 2019 08:24:46 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org
Subject: [PATCH v1 4/8] kexec: add machine_kexec_post_load()
Date: Thu,  1 Aug 2019 11:24:35 -0400
Message-Id: <20190801152439.11363-5-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190801152439.11363-1-pasha.tatashin@soleen.com>
References: <20190801152439.11363-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_082448_635656_418C4581 
X-CRM114-Status: GOOD (  11.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

It is the same as machine_kexec_prepare(), but is called after segments are
loaded. This way, can do processing work with already loaded relocation
segments. One such example is arm64: it has to have segments loaded in
order to create a page table, but it cannot do it during kexec time,
because at that time allocations won't be possible anymore.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 kernel/kexec.c          | 4 ++++
 kernel/kexec_core.c     | 6 ++++++
 kernel/kexec_file.c     | 4 ++++
 kernel/kexec_internal.h | 2 ++
 4 files changed, 16 insertions(+)

diff --git a/kernel/kexec.c b/kernel/kexec.c
index 1b018f1a6e0d..27b71dc7b35a 100644
--- a/kernel/kexec.c
+++ b/kernel/kexec.c
@@ -159,6 +159,10 @@ static int do_kexec_load(unsigned long entry, unsigned long nr_segments,
 
 	kimage_terminate(image);
 
+	ret = machine_kexec_post_load(image);
+	if (ret)
+		goto out;
+
 	/* Install the new kernel and uninstall the old */
 	image = xchg(dest_image, image);
 
diff --git a/kernel/kexec_core.c b/kernel/kexec_core.c
index 2c5b72863b7b..8360645d1bbe 100644
--- a/kernel/kexec_core.c
+++ b/kernel/kexec_core.c
@@ -587,6 +587,12 @@ static void kimage_free_extra_pages(struct kimage *image)
 	kimage_free_page_list(&image->unusable_pages);
 
 }
+
+int __weak machine_kexec_post_load(struct kimage *image)
+{
+	return 0;
+}
+
 void kimage_terminate(struct kimage *image)
 {
 	if (*image->entry != 0)
diff --git a/kernel/kexec_file.c b/kernel/kexec_file.c
index b8cc032d5620..cb531d768114 100644
--- a/kernel/kexec_file.c
+++ b/kernel/kexec_file.c
@@ -391,6 +391,10 @@ SYSCALL_DEFINE5(kexec_file_load, int, kernel_fd, int, initrd_fd,
 
 	kimage_terminate(image);
 
+	ret = machine_kexec_post_load(image);
+	if (ret)
+		goto out;
+
 	/*
 	 * Free up any temporary buffers allocated which are not needed
 	 * after image has been loaded
diff --git a/kernel/kexec_internal.h b/kernel/kexec_internal.h
index 48aaf2ac0d0d..39d30ccf8d87 100644
--- a/kernel/kexec_internal.h
+++ b/kernel/kexec_internal.h
@@ -13,6 +13,8 @@ void kimage_terminate(struct kimage *image);
 int kimage_is_destination_range(struct kimage *image,
 				unsigned long start, unsigned long end);
 
+int machine_kexec_post_load(struct kimage *image);
+
 extern struct mutex kexec_mutex;
 
 #ifdef CONFIG_KEXEC_FILE
-- 
2.22.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
