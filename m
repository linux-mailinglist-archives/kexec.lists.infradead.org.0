Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 975711848DE
	for <lists+kexec@lfdr.de>; Fri, 13 Mar 2020 15:10:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=E+MW2aDtkocRwxL40h2M/v9fUfOA19eH0szlXbTlx6s=; b=Zm9FWYOqjSSN3q
	dfgwxX4ojPKT4cgMtlK5vbo6AMYXWo59dAvR5p6sdo/KBeDNygJXYDM25CIP2OP2GU+sZLANR09cE
	pM1T6jwxhIsf8ldNBeceR6hygMP2MBCIPydYU3HKzJeFOvy7isCLWz75YUrg7IWRAyq5V55g8akSx
	Wq6FWuHwZSu/eVc4Z5SAxUcgU9ED27MOINk2CyUNzeL8HCZqtWaeMavd4SifvaicX/fknsXwF1LaA
	05YCn4EdxsX6TsqjwcaCppUN2Jwzqxw5lbKPEPk3cVx00Zya21JAUih4CloynLFm6iZSoUgHWvm8+
	CP7WP0nZ2hYM5ty8fVFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCl0t-0000N1-Kx; Fri, 13 Mar 2020 14:10:11 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCl0p-0008Rj-I6
 for kexec@lists.infradead.org; Fri, 13 Mar 2020 14:10:08 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 39D32AC6E
 for <kexec@lists.infradead.org>; Fri, 13 Mar 2020 14:10:06 +0000 (UTC)
From: Petr Tesarik <ptesarik@suse.cz>
To: kexec mailing list <kexec@lists.infradead.org>
Subject: [v2 0/2] Fix --kexec-syscall-auto on s390x
Date: Fri, 13 Mar 2020 15:09:27 +0100
Message-Id: <20200313140929.29551-1-ptesarik@suse.cz>
X-Mailer: git-send-email 2.16.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_071007_775475_1F22D75F 
X-CRM114-Status: UNSURE (   7.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

From: Petr Tesarik <ptesarik@suse.com>

As noticed by Raymund Will, kexec -la does not work on kernels without
the kexec_file_load(2) syscall, revealing some shortcomings in the
automatic syscall selection.

Petr Tesarik (2):
  kexec-tools: Fix kexec_file_load(2) error handling
  kexec-tools: Reset getopt before falling back to legacy syscall

 kexec/kexec.c | 120 ++++++++++++++++++++++++++++++++--------------------------
 kexec/kexec.h |   1 +
 2 files changed, 68 insertions(+), 53 deletions(-)

-- 
2.16.4


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
