Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFC0ED9A9E
	for <lists+kexec@lfdr.de>; Wed, 16 Oct 2019 22:01:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qczcda/hbNP+kQj96xbObaO4o/pRlc5LamzS/9taUe8=; b=UA1fNxfctsnJZh
	xVVgJZlyhL5lcN7Qp1kYEFyT4IwOX7sazS2srvFxzu8mwZEGzHOcRhiPUomroTpUBQiPzLMcdPhF5
	tzPhsie4THfAMp+bJzv6PD62IVmg2lHY00bg0IpF0N37kokopfMeoWxSJSOSV8s8MjWDojMyIUmoo
	/GQA6bFxhO5Auagy3qXBG7hyF55Oj735QCDRynRATmIElRC8Mb4kz3mUkhwgMWxMQ7rp0rj2013gQ
	8k7TrZNDAhxM1NiHniDOyw2mPUFTSehi8T+RVlKgD6FeE9EZPwisuLB6NtVlbbWLu2kXtyfvBvdqZ
	N4r/x75TQTMNeWleKJ9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKpU3-0004ih-4L; Wed, 16 Oct 2019 20:01:23 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKpTN-00042m-85
 for kexec@lists.infradead.org; Wed, 16 Oct 2019 20:00:43 +0000
Received: by mail-qk1-x744.google.com with SMTP id p4so3436122qkf.5
 for <kexec@lists.infradead.org>; Wed, 16 Oct 2019 13:00:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=XbQaUimD78vcQ5YhGt3SAqPD0eC6PCpt9aPKURlFvbA=;
 b=S+LQGOsCXVbkDAppXLTZQWx3ApD3aZBcmqbRDcsmDfwye32g9YsI1DNq8SQDiITNx8
 Mwxkd82MYZ12ycXdsRv9CNHcPC410C7eK3UWoKPbVXzWQiDW/SW84fKO45Is81s7Xfn5
 jLGiv34q4GSCzK0Ob1pNRPgcllgcMNO3A+TwhI/1+OX+skjjzrq/5TCPng3VwjlB802m
 OkPx+g9Te9uSWwswjm9qIli+JKp08CTymdE/XiM1DKv2c0SaxRZW13ytSw5XxWIptqNH
 1OjY3hg7xOxJbOnC2WT1wDnVZ+/mdRLSINcDNEBzMDdFGI4H07iXQxhIG8482S1SbKNp
 qjww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XbQaUimD78vcQ5YhGt3SAqPD0eC6PCpt9aPKURlFvbA=;
 b=RrWohQHTnDnqjxAZ2c+qV2siidc/P3TIrUJ6sC/VI+DHqTOkBlDawHHTRve9UV5ELA
 f3JbISFOgXWVWxpXDkBP1RPUVeX1RMRg5lA1p0Sz0Li7UECBGg0syVdRpx/0KXFMneMR
 m2qyY+nMHtlGaMu3swLqkelB+UQ8tGjb/exq2kzWYbTIYDHf5kEIiawOVKo1wkFCdTwL
 GTxycP8lp5CgC5tvU7xu/gk8E4z6x89hgxmzuRFvf5VPnRrjjTV0iHGvpeo5FsjgiIFq
 8pZQFAu/tmNLMklrv2olNpQKJGjUy1uhfsTS7Ca7QfWYE3Iv+CmIOtbXFYdMISwTltt3
 xT8w==
X-Gm-Message-State: APjAAAXIUU7/1x3m6K3OYaVNTF24P6zS3Www6Jnbghv047YrdgRYokF/
 LAdgJbjX3ZqlqlQjKFJ1HPFKfA==
X-Google-Smtp-Source: APXvYqxV3JHHx4EkCCQ727EFwQKuQaS1GMszla5iOLzh5CkwVHlhm3ZxtmVs9ZyOFMZpCXbaSs163w==
X-Received: by 2002:a37:e503:: with SMTP id e3mr43333948qkg.491.1571256040373; 
 Wed, 16 Oct 2019 13:00:40 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id c204sm13342030qkb.90.2019.10.16.13.00.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 13:00:39 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com, steve.capper@arm.com, rfontana@redhat.com,
 tglx@linutronix.de
Subject: [PATCH v7 02/25] kexec: add machine_kexec_post_load()
Date: Wed, 16 Oct 2019 16:00:11 -0400
Message-Id: <20191016200034.1342308-3-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191016200034.1342308-1-pasha.tatashin@soleen.com>
References: <20191016200034.1342308-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_130041_289112_848B925A 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Acked-by: Dave Young <dyoung@redhat.com>
---
 kernel/kexec.c          | 4 ++++
 kernel/kexec_core.c     | 6 ++++++
 kernel/kexec_file.c     | 4 ++++
 kernel/kexec_internal.h | 2 ++
 4 files changed, 16 insertions(+)

diff --git a/kernel/kexec.c b/kernel/kexec.c
index bc933c0db9bf..f977786fe498 100644
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
index f7ae04b8de6f..c19c0dad1ebe 100644
--- a/kernel/kexec_core.c
+++ b/kernel/kexec_core.c
@@ -589,6 +589,12 @@ static void kimage_free_extra_pages(struct kimage *image)
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
index 79f252af7dee..5b7f802be177 100644
--- a/kernel/kexec_file.c
+++ b/kernel/kexec_file.c
@@ -441,6 +441,10 @@ SYSCALL_DEFINE5(kexec_file_load, int, kernel_fd, int, initrd_fd,
 
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
2.23.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
