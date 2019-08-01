Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24DD07DEC4
	for <lists+kexec@lfdr.de>; Thu,  1 Aug 2019 17:25:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WVn3Q5vgyJcKMrIqYiWwFpHN3lTTvqjbAv6FqBia2JU=; b=nMIh9jNacbPhEH
	krptbLvrlMjrVlPcF75+NzIdBBVTGXDv/zGsNKmvQZQzBeq1yjlhhj+AUaxQG3EZ9W0mex4u8eG63
	v3vfImwnLLxVJxm1fv7Zf8lll6scvar4uPBj5GgcO8y656qLBSw6jsAO6nWaET9xAWHzovoFz2K+h
	EiV2jC198kgxAqnmgI9vmiTXrUzIubWg30TkEyJqvlvnKfU1o9XDJp6MjJ65JLIpf3UeAOBqhtNo8
	OhZbzSCYE29/k6GD6t9aqGH6iCzFnkhu9I8zehbk6XarsKLZZFoROXV2QSl55BlUoP98HYej3D7Rj
	1rbDX5stVntxAxWzSA4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htCxD-0003BW-AX; Thu, 01 Aug 2019 15:25:19 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htCwe-0001Nr-De
 for kexec@lists.infradead.org; Thu, 01 Aug 2019 15:24:50 +0000
Received: by mail-qt1-x843.google.com with SMTP id d23so70656580qto.2
 for <kexec@lists.infradead.org>; Thu, 01 Aug 2019 08:24:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=O8sp7Ivz1alrz3xXygPalicyjdu3OPu+GkykS7h2DZg=;
 b=a+ZyqbSBLkROpB7/yFWxbV2nj0nJ9hDxmgh4mRALQnnKBGnNtH8T0nQUrv8UkRBg/i
 4WX88zAuhNmFQq77+4y9mbgKsQZx5e9p3+RTf3BDWqFUkEYmwTQiOs5gYkKye9q+UvGm
 rrW5X8jWdRpvHieYaQYWoZO7jd7RenFKNBqyDhphJmxbDqSMnHn0S9ugABAV4ojKAMrt
 WMN9dfleQMPrUVx/sM+TkzfX29W6VxjDfELNF5QfxwUOSuvm2EHT5TT4TGH3P1ovyQfC
 Tun6cAtooJ8I/i3nI/74KesTqVzHXq8LFMEI+AszpJeoxYJQBZnZJq8ze4JJS7mFJy2d
 N/jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=O8sp7Ivz1alrz3xXygPalicyjdu3OPu+GkykS7h2DZg=;
 b=PVfhekkEpzIJ5tSS67pD3/umblk8EwpC6liTzXfXKs9H51t/8kIWnG2AH17lmf8V4S
 /JAHzUkI8estfELrZh7Y872q/qyUv4frORb3zLqsVjaDQk8EywuUqs4hZOcqzBN02qJ4
 8GGZXkSU7+yYxdTmRHfbu80YUN8IKM5OA/jcSSirHTZGIGL1ooRH1a1ajQi7Rrle+M06
 dsng8jHC/I3sjIKMRjK4rv7FAZQ/saCZcgUbh7i24xgU2soiowm/gZMjCTvpcYcwRy6Y
 JNzgPCS+ZPvb9F2gKC6/wrK2oV6goD3MwSWRi79IDqUqfuaH5Hj53pNGKeQ56A4MYuha
 rphA==
X-Gm-Message-State: APjAAAUBTVcLMX47bNeRFLzS0uXyhsL0I+0Y2kHaikYVXSqPBQ+xwGDP
 BWXo1wxTDoxlYlPOy6bZwZM=
X-Google-Smtp-Source: APXvYqwsbycuknfqaOcSU+c+nk0JiA4YbLBMUrdb658pVMpdB83rdKhorAeSqVY6ZrvSIKM3oMvfcA==
X-Received: by 2002:aed:355d:: with SMTP id b29mr90861643qte.12.1564673083294; 
 Thu, 01 Aug 2019 08:24:43 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id o5sm30899952qkf.10.2019.08.01.08.24.41
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 01 Aug 2019 08:24:42 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org
Subject: [PATCH v1 1/8] kexec: quiet down kexec reboot
Date: Thu,  1 Aug 2019 11:24:32 -0400
Message-Id: <20190801152439.11363-2-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190801152439.11363-1-pasha.tatashin@soleen.com>
References: <20190801152439.11363-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_082444_457650_8CB6FBBF 
X-CRM114-Status: GOOD (  10.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
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

Here is a regular kexec command sequence and output:
=====
$ kexec --reuse-cmdline -i --load Image
$ kexec -e
[  161.342002] kexec_core: Starting new kernel

Welcome to Buildroot
buildroot login:
=====

Even when "quiet" kernel parameter is specified, "kexec_core: Starting
new kernel" is printed.

This message has  KERN_EMERG level, but there is no emergency, it is a
normal kexec operation, so quiet it down to appropriate KERN_NOTICE.

Machines that have slow console baud rate benefit from less output.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
Reviewed-by: Simon Horman <horms@verge.net.au>
---
 kernel/kexec_core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kernel/kexec_core.c b/kernel/kexec_core.c
index d5870723b8ad..2c5b72863b7b 100644
--- a/kernel/kexec_core.c
+++ b/kernel/kexec_core.c
@@ -1169,7 +1169,7 @@ int kernel_kexec(void)
 		 * CPU hotplug again; so re-enable it here.
 		 */
 		cpu_hotplug_enable();
-		pr_emerg("Starting new kernel\n");
+		pr_notice("Starting new kernel\n");
 		machine_shutdown();
 	}
 
-- 
2.22.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
