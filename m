Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A97EC3B5D
	for <lists+kexec@lfdr.de>; Tue,  1 Oct 2019 18:45:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NBEUHh+cOcIHj15lteoa+bWekju1VFllZ1AySeDd8tw=; b=XMjUszmPcr005I
	HqTwizh1w9FZfucQyiwug8lb3US79ZnFxkgNEMoRAls0QS9xKIKOFQMg2qIpPkgMabz+FkUUZDFZU
	Oft0qQsrLRWBIx45yfDnH0b7rxl1WkARTfp4FRlDgQTqfPStVPJ+zamUZqUyvzE8PIZBbG9MrkfA6
	AQqXm9T/23+OM7pVilWmOLhGR4vXzOA7+0GPAOOqTeTh8gmGXRYryPVW5WNMCI95Qm2RBI/nN0JTk
	Op+rx/atVhsYHEfrAiuU9mY2KUIvdjQXHjV/PTW5/YCiRk5RqmURRwAjO9VoRd/h5s5Jl4zXvUFdf
	I09w13aeIBZWO7RtJCrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFLGo-0007mw-Ps; Tue, 01 Oct 2019 16:45:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFLGi-0007kR-C2
 for kexec@lists.infradead.org; Tue, 01 Oct 2019 16:45:00 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2817321855;
 Tue,  1 Oct 2019 16:44:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569948296;
 bh=rZ7Ir3zqqqTnp6XFapqPdn77QXMhSg94KnoHI1Ea4JU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=XiB5sxZhNUV0LXBy/u5x+fZO5Vrxev+J79VdV0QmpRWdtId4rE7UKlP7P6OVYw9rr
 hugp3GvtFNfGBsklzGolKLpMd4MRhrhIW2SWcDlXsVcetslMXysoU2tNv6twF/HyZx
 9zpaK+LWDDizCc0mIN3rlAW5oHfewWOepKZgNm1s=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 25/29] kexec: bail out upon SIGKILL when
 allocating memory.
Date: Tue,  1 Oct 2019 12:44:19 -0400
Message-Id: <20191001164423.16406-25-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191001164423.16406-1-sashal@kernel.org>
References: <20191001164423.16406-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_094456_552700_AE18C749 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>,
 Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>, kexec@lists.infradead.org,
 syzbot <syzbot+8ab2d0f39fb79fe6ca40@syzkaller.appspotmail.com>,
 Eric Biederman <ebiederm@xmission.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

From: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>

[ Upstream commit 7c3a6aedcd6aae0a32a527e68669f7dd667492d1 ]

syzbot found that a thread can stall for minutes inside kexec_load() after
that thread was killed by SIGKILL [1].  It turned out that the reproducer
was trying to allocate 2408MB of memory using kimage_alloc_page() from
kimage_load_normal_segment().  Let's check for SIGKILL before doing memory
allocation.

[1] https://syzkaller.appspot.com/bug?id=a0e3436829698d5824231251fad9d8e998f94f5e

Link: http://lkml.kernel.org/r/993c9185-d324-2640-d061-bed2dd18b1f7@I-love.SAKURA.ne.jp
Signed-off-by: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
Reported-by: syzbot <syzbot+8ab2d0f39fb79fe6ca40@syzkaller.appspotmail.com>
Cc: Eric Biederman <ebiederm@xmission.com>
Reviewed-by: Andrew Morton <akpm@linux-foundation.org>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 kernel/kexec_core.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/kernel/kexec_core.c b/kernel/kexec_core.c
index 20fef1a38602d..8f15665ab6167 100644
--- a/kernel/kexec_core.c
+++ b/kernel/kexec_core.c
@@ -301,6 +301,8 @@ static struct page *kimage_alloc_pages(gfp_t gfp_mask, unsigned int order)
 {
 	struct page *pages;
 
+	if (fatal_signal_pending(current))
+		return NULL;
 	pages = alloc_pages(gfp_mask & ~__GFP_ZERO, order);
 	if (pages) {
 		unsigned int count, i;
-- 
2.20.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
