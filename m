Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E84209D621
	for <lists+kexec@lfdr.de>; Mon, 26 Aug 2019 21:01:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1ECfqj3eYJSkzUgJNw4kyoll0qjvwh5iJbhSiTUJNaU=; b=rBg/3617scLz7W
	mzr3eYiO1kaOONQwt8tfbOtWDWVFlAB5RFp61sv/wCza4w2sfKZK3wpmyh1I4kpbPrPqAyeMu6b2h
	NZ+tRtdyP+ziy7hGuuKlN4JWxwc5hnB3IGKzW6f3GNQyl5FbH14atEyYeZ4PQXVbXlKKawqaFIQxo
	KOldGJe5TFGdBy6mKjZmw9ak74GAILqxKr/LWHlby8g5mmtf1n7hZwwq2QlJM0X645xO9Jqd7qZVc
	+yBEny3/OpNmqWTMiCU5/59FH/6PqZuGEkgryFhgNxETcE2H73YunndV7M6uFzSHeSqXikgNbOoPs
	ojL+Q43JAqTf7NkcynOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2KEm-0006zn-I9; Mon, 26 Aug 2019 19:01:08 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2KEe-0006y8-7b
 for kexec@lists.infradead.org; Mon, 26 Aug 2019 19:01:01 +0000
Received: by mail-qt1-x843.google.com with SMTP id 44so18929532qtg.11
 for <kexec@lists.infradead.org>; Mon, 26 Aug 2019 12:00:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cwuY5sKjDPAwM+Eem6lSsn7R4L71P95IVVWzmn8Wm+8=;
 b=FgCCF3AP0YmnF2LejCVe101FrUUf6kmHoXj2PR30frAoZbyQsvuBWlRQpPGROktgcK
 Q9iijuL25Ge0l4YDSLYImTqkM8+2Kz9w/LlLYow27imU5TKvZ1FE5S0dEQ54Ok4vxlnt
 rzT65ReQAVdCqfJk6HEhHP5wmZHVvFqteyH3NVAoADlXG/Fxp1ajR/692fNqYWQD2x+d
 jE/69FydSNlhO8d7GREtGEU/s3Pl1R8fW/9GiQSdh7LT7bz8eZux+yBKZ0tLTlFChi0I
 ovgnk334G/N6WVMoibuCVgTXrQsyrpz/Q2qjVADuGdKG4w346BbPwvs+ajjRcvfWmM7W
 5xew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cwuY5sKjDPAwM+Eem6lSsn7R4L71P95IVVWzmn8Wm+8=;
 b=jjUCUdToqotp7wwxSdp8tLMqFyzgW1aY2lSZGqJoOxWmcQB7A8FvaKTYmtgkDhYIVf
 BoEa55yFoToK3oi3HH6LEtrw6EO+lBasE3JaNQ5rNeF1EALeCY6F4fZ8EuJYsoXNkUNR
 /8U4frIhhnVpLTEfLJXIw/5xfii7jbTEmc0tnmrqLZ6RO4c/zMnYUl8hyX/OI4ZAiDhq
 o7lZ4GQO3imMdwpZToxz7SK3LmxTt13o55K6rZxFgZzLbOc30LCgu8pSYBozV0TQJMVp
 5uFoPkTXZeua96Epj7W9VUaGZN7xL03KvAU0nrEtym7BseVDnE0jyJGonDcY7L6bdc8t
 Xz3A==
X-Gm-Message-State: APjAAAVLT+neFp7msNaOZKFRpu2J/gh0Xa4P/xdRNf4XaIj/4YNfso4l
 PUNrd+r5RGAZ4tmvkcD6GhFeVA==
X-Google-Smtp-Source: APXvYqx70qupmhIz/B7QuYzWH1TgZQebS1UrrW8+S6jNJLoBgPyN9gqcqANa3UWN/UDyR6cFmCr9Hw==
X-Received: by 2002:ac8:4691:: with SMTP id g17mr19142886qto.104.1566846058466; 
 Mon, 26 Aug 2019 12:00:58 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id o45sm8614377qta.65.2019.08.26.12.00.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 12:00:57 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, marc.zyngier@arm.com,
 james.morse@arm.com, vladimir.murzin@arm.com, mark.rutland@arm.com
Subject: [PATCH v1 0/6] Allow kexec reboot for GICv3 and device tree
Date: Mon, 26 Aug 2019 15:00:50 -0400
Message-Id: <20190826190056.27854-1-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_120100_346972_10B9FF74 
X-CRM114-Status: UNSURE (   6.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Marc Zyngier added the support for kexec and GICv3 for EFI based systems.
However, it is still not possible todo on systems with device trees.

Here is EFI fixes from Marc:
https://lore.kernel.org/lkml/20180921195954.21574-1-marc.zyngier@arm.com

For Device Tree variant: lets allow reserve a memory region in interrupt
controller node, and use this property to allocate interrupt tables.

This way we are safe during kexec, as these page tables are going to stay
the same after kexec.

Pavel Tatashin (6):
  rqchip/gic-v3-its: reset prop table outside of allocation
  rqchip/gic-v3-its: use temporary va / pa variables
  rqchip/gic-v3-its: add reset pending table function
  rqchip/gic-v3-its: move reset pending table outside of allocator
  rqchip/gic-v3-its: move reset pending table outside of allocator
  dt-bindings: interrupt-controller: add optional memory-region

 .../interrupt-controller/arm,gic-v3.yaml      |   7 +
 drivers/irqchip/irq-gic-v3-its.c              | 121 +++++++++++++-----
 2 files changed, 96 insertions(+), 32 deletions(-)

-- 
2.23.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
