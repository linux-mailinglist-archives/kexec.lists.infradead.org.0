Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42414124E1A
	for <lists+kexec@lfdr.de>; Wed, 18 Dec 2019 17:43:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bbYnDWhPj3gXxA0VbcJQ66xXhQJy0eT86np0ioXRrVI=; b=CF3Frq3NT6K8sL9/YsbPK3BS1D
	epyJOWBp6mHtHeqg06Ny3H3qlGzz4rv7KgEVwKgZtrn4s0XUTuyx1P/0iUmOyVtMH1t0+F/yK4o+Y
	bQwHvbBiPsA0GHtvqjiSQSO2aTXdgNfptQFmQZ3Hl+JSZqXR/K+EyASBeJoBbl3L4hpO4xJJd1l1L
	7mahm+FidLoG0GyFpSXO5m7HUwggFCH1HCPNkEEJIKVrfYgc24/z1GYUOJwiU2YbU6bX7Pmfmcc9n
	nElSIoLqZw5ZTCicRShuI8vLvmbVHmizShV/69+3zcaaqsP1AnNH2FQr4iJ2HtGMgxbVvRBU+25of
	t5fisoog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihcQB-0006fW-UK; Wed, 18 Dec 2019 16:43:35 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihcQ4-0006Zr-UV
 for kexec@lists.infradead.org; Wed, 18 Dec 2019 16:43:32 +0000
Received: by mail-qk1-x744.google.com with SMTP id c16so2093172qko.6
 for <kexec@lists.infradead.org>; Wed, 18 Dec 2019 08:43:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=aMLjRYC9OxSanuD51huRpQgooAM0X0Jt+3MpYaqp0fM=;
 b=Epd9rVmJ+QcoUbl+WIA67RkYi+GZkPiw+WFfsOtK3eoB2KJNpso973yLOE+lXhsfID
 3cOnVnEOUEg7d4kfk8XI5doST0MzmSrzor4J8UusK8OnLQGiJ+uYs36o0chmZus9kvQN
 X+JdJHtCT7jOpfzOidpUwGIkW7AnlLTDy9kIk8/OD3Ztq+mYGuhYAw9EKNcpl8iKnr2Y
 UtT/7As/7AVMpRIZEfqzrD/fH9bryIMHtVOW6EbqKx7qPB4fE+ntW1qXFQzYi7c0Wkgr
 W/F6et+HtnP1pKsRtGkX3POb3c97KnJBj3KANMxfWJnmSWvdxKT9fEys6RqrekyrDSTN
 hfKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=aMLjRYC9OxSanuD51huRpQgooAM0X0Jt+3MpYaqp0fM=;
 b=WoHhnKxQmZO01rgmt1CmxEZpOC3WZi5zMrviQO3L7szFJYhhNlKDRYki2LMfv9e7Fg
 yWMK5RZFPXdHoXdaxjXZUHm83ri0N6LGe4t9scru9j1Ib9OnRYVvhFYnH8nQ/XwHFCy+
 ae7AZMGnjHJmvRED4lcheA5zB5cYlkpFIwULSlSl0vYMJKCfZwYe1EbauVd2vyg9O83n
 qrHzDLOqN4V+Rsb1OtakVwxJp8SGtILXgIgS9Gb/4abucKPZ6Kh5Cl6QmbR+S4ePs5Gp
 IRb91zLX0nB+ARqDuOyW+Kiix2NGMVc3BafTg7O3T/KIjyp6rWpIkTv84kT+Q/RqwHvR
 OCtg==
X-Gm-Message-State: APjAAAXLW2oz+1eHE9Vl5yRU6OsRQIaiAE07NybZQiiysvympJOI7CME
 bfX3G0fr/xxGc6mmeEPiadW6SzY=
X-Google-Smtp-Source: APXvYqxfbpcxfB8OFwQQKGbPVauxs/Y6yko0E9F5u9BmN2+CfxIKi2KCwfGW3Wd54BZWiLHwxTYP6w==
X-Received: by 2002:a05:620a:817:: with SMTP id
 s23mr3518055qks.391.1576687406780; 
 Wed, 18 Dec 2019 08:43:26 -0800 (PST)
Received: from gabell.bos.redhat.com (nat-pool-bos-t.redhat.com.
 [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id r66sm752051qkd.125.2019.12.18.08.43.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Dec 2019 08:43:26 -0800 (PST)
From: Masayoshi Mizuma <msys.mizuma@gmail.com>
To: kexec mailing list <kexec@lists.infradead.org>,
 Simon Horman <horms@verge.net.au>
Subject: [PATCH v3 1/3] kexec: add variant helper functions for handling
 memory regions
Date: Wed, 18 Dec 2019 11:42:30 -0500
Message-Id: <20191218164232.6086-2-msys.mizuma@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191218164232.6086-1-msys.mizuma@gmail.com>
References: <20191218164232.6086-1-msys.mizuma@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_084329_001071_F0831DB8 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (msys.mizuma[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: AKASHI Takahiro <takahiro.akashi@linaro.org>,
 Bhupesh Sharma <bhsharma@redhat.com>, Masayoshi Mizuma <msys.mizuma@gmail.com>,
 James Morse <james.morse@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

From: AKASHI Takahiro <takahiro.akashi@linaro.org>

mem_regions_alloc_and_add() and mem_regions_alloc_and_exclude() are
functionally equivalent to, respectively, mem_regions_add() and
mem_regions_exclude() except the formers will re-allocate memory
dynamically when no more entries are available in 'ranges' array.

Signed-off-by: AKASHI Takahiro <takahiro.akashi@linaro.org>
Tested-by: Bhupesh Sharma <bhsharma@redhat.com>
Tested-by: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>
---
 kexec/mem_regions.c | 42 ++++++++++++++++++++++++++++++++++++++++++
 kexec/mem_regions.h |  7 +++++++
 2 files changed, 49 insertions(+)

diff --git a/kexec/mem_regions.c b/kexec/mem_regions.c
index 50c8abc..ad7d3f1 100644
--- a/kexec/mem_regions.c
+++ b/kexec/mem_regions.c
@@ -125,3 +125,45 @@ int mem_regions_exclude(struct memory_ranges *ranges,
 	}
 	return 0;
 }
+
+#define KEXEC_MEMORY_RANGES 16
+
+int mem_regions_alloc_and_add(struct memory_ranges *ranges,
+			      unsigned long long base,
+			      unsigned long long length, int type)
+{
+	void *new_ranges;
+
+	if (ranges->size >= ranges->max_size) {
+		new_ranges = realloc(ranges->ranges,
+				sizeof(struct memory_range) *
+				(ranges->max_size + KEXEC_MEMORY_RANGES));
+		if (!new_ranges)
+			return -1;
+
+		ranges->ranges = new_ranges;
+		ranges->max_size += KEXEC_MEMORY_RANGES;
+	}
+
+	return mem_regions_add(ranges, base, length, type);
+}
+
+int mem_regions_alloc_and_exclude(struct memory_ranges *ranges,
+				  const struct memory_range *range)
+{
+	void *new_ranges;
+
+	/* for safety, we should have at least one free entry in ranges */
+	if (ranges->size >= ranges->max_size) {
+		new_ranges = realloc(ranges->ranges,
+				sizeof(struct memory_range) *
+				(ranges->max_size + KEXEC_MEMORY_RANGES));
+		if (!new_ranges)
+			return -1;
+
+		ranges->ranges = new_ranges;
+		ranges->max_size += KEXEC_MEMORY_RANGES;
+	}
+
+	return mem_regions_exclude(ranges, range);
+}
diff --git a/kexec/mem_regions.h b/kexec/mem_regions.h
index ae9e972..e306d67 100644
--- a/kexec/mem_regions.h
+++ b/kexec/mem_regions.h
@@ -12,4 +12,11 @@ int mem_regions_exclude(struct memory_ranges *ranges,
 int mem_regions_add(struct memory_ranges *ranges, unsigned long long base,
                     unsigned long long length, int type);
 
+int mem_regions_alloc_and_exclude(struct memory_ranges *ranges,
+				  const struct memory_range *range);
+
+int mem_regions_alloc_and_add(struct memory_ranges *ranges,
+			      unsigned long long base,
+			      unsigned long long length, int type);
+
 #endif
-- 
2.18.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
