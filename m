Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 021CC1C6306
	for <lists+kexec@lfdr.de>; Tue,  5 May 2020 23:24:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oh/f15x/Vx4oICfuSZ0Hld8tU6y/2BhQ9qgd14bMrWU=; b=b44yGaDu2OUppk
	OVzLZvLcy+j/O78+lUtQ8vwNNI/PvvDQ+pwECLlHewnNNqU4BeIjJZUjtOsgBG8M1FNrjpqRoKdh0
	VsauVeMxb9OwvdJTRpTHrsiR9zmG3TElNmr4pBpELxnF9OlZ3uRDCXKHV0rJxgzThQhR/jYuDurw4
	gZKLUSK4yhRJIlaBCQHQnNU9KJsWac7cK5MwCrYkVfSX4Ys5mMllA831BpLyg43Y2YLXRafF6h4Mj
	w9BUxZghB/1bKZv9NauuLBaLHn2I2LgM1Cvv+CN0hL8hn/2qFGbowjy1zaInDcYOvkBsD6Ksa6x/c
	JVk5Sco2CFmYJEQEsr2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW53a-0001Fr-EY; Tue, 05 May 2020 21:24:50 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW53X-0001Ed-Gx
 for kexec@lists.infradead.org; Tue, 05 May 2020 21:24:48 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 682151281606D;
 Tue,  5 May 2020 14:24:40 -0700 (PDT)
Date: Tue, 05 May 2020 14:24:39 -0700 (PDT)
Message-Id: <20200505.142439.1075452616982863931.davem@davemloft.net>
To: bhsharma@redhat.com
Subject: Re: [PATCH 1/2] net: qed*: Reduce RX and TX default ring count
 when running inside kdump kernel
From: David Miller <davem@davemloft.net>
In-Reply-To: <1588705481-18385-2-git-send-email-bhsharma@redhat.com>
References: <1588705481-18385-1-git-send-email-bhsharma@redhat.com>
 <1588705481-18385-2-git-send-email-bhsharma@redhat.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 05 May 2020 14:24:40 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_142447_563169_F0CAA016 
X-CRM114-Status: UNSURE (   4.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: aelior@marvell.com, manishc@marvell.com, netdev@vger.kernel.org,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 GR-everest-linux-l2@marvell.com, bhupesh.linux@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Wed,  6 May 2020 00:34:40 +0530

> -#define NUM_RX_BDS_DEF		((u16)BIT(10) - 1)
> +#define NUM_RX_BDS_DEF		((is_kdump_kernel()) ? ((u16)BIT(6) - 1) : ((u16)BIT(10) - 1))

These parenthesis are very excessive and unnecessary.  At the
very least remove the parenthesis around is_kdump_kernel().

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
