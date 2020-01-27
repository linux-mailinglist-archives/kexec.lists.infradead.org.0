Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E07B014A96A
	for <lists+kexec@lfdr.de>; Mon, 27 Jan 2020 19:06:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5/qlAwtWt1XwCILv6IsZiX9Q9bgmmkyIWhTDrQWxW4Q=; b=NY1yf9j2pTMB+A
	yfC4HgMkGtRhoxnJpulZM5A6DqcuPrPEkdqwQFG3qckhrj7U41S5deD3kccryqTrz8IkrbjWa2t+i
	5bYif/BBJpmngDZ5D+goI4jKV5StlgocZWAcxMhj7BtgqmhXssdCga9dPDXII0BR6ArHjYZKoNn+m
	sCE4pNjXl2KtTmpJ2cCmZSz+Zmf+0zMiOQ4CwlY+wzl2NFSaAxKp+MoYtLIJWs6RZ+5ZZhlewXi0v
	4dvpHUl6MjiBLA/VREv1I3kQsPWIfDQFBK1dJtrarfijjyEszkr/sYOFYliBGGBwgDHasx1fJgUyP
	d3ZbpICMLg7gcgy1HGoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw8mc-0004D6-IB; Mon, 27 Jan 2020 18:06:46 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw8mZ-00040P-F9
 for kexec@lists.infradead.org; Mon, 27 Jan 2020 18:06:44 +0000
Received: from [177.68.10.170] (helo=calabresa)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <cascardo@canonical.com>)
 id 1iw8mP-00017C-96; Mon, 27 Jan 2020 18:06:33 +0000
Date: Mon, 27 Jan 2020 15:06:27 -0300
From: Thadeu Lima de Souza Cascardo <cascardo@canonical.com>
To: HAGIO =?utf-8?B?S0FaVUhJVE8o6JCp5bC+44CA5LiA5LuBKQ==?= <k-hagio-ab@nec.com>
Subject: Re: [PATCH] makedumpfile: cope with not-present mem section
Message-ID: <20200127180627.GB4080@calabresa>
References: <1579487124-28426-1-git-send-email-piliu@redhat.com>
 <2AA47CAB-ED13-4A0A-9288-063832158203@redhat.com>
 <20200120085919.GB16539@MiWiFi-R3L-srv>
 <44958c3d-c861-8eb0-5713-50c36c7cfc6e@redhat.com>
 <TY2PR01MB5210FAB04501E6C59AAB2B06DD0F0@TY2PR01MB5210.jpnprd01.prod.outlook.com>
 <20200127170447.GA4080@calabresa>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200127170447.GA4080@calabresa>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_100643_644165_BAFC4C8C 
X-CRM114-Status: UNSURE (   8.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [91.189.89.112 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: piliu <piliu@redhat.com>, Baoquan He <bhe@redhat.com>,
 David Hildenbrand <david@redhat.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 Michal Hocko <mhocko@kernel.org>, Qian Cai <cai@lca.pw>,
 Andrew Morton <akpm@linux-foundation.org>,
 Dan Williams <dan.j.williams@intel.com>, Oscar Salvador <osalvador@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Mon, Jan 27, 2020 at 02:04:54PM -0300, Thadeu Lima de Souza Cascardo wrote:
> Sorry for taking too long to respond, as I was on vacation.
> 
> The kernels that had commit 83e3c48729d9, but not commit a0b1280368d1, are
> not supported anymore. In a way that it's even hard for me to test them.
> 
> However, I managed to test it, and those two lines are definitively needed
> to dump a VM running such a kernel. Is removing them really needed to fix
> this issue?
> 
> Otherwise, I would rather keep them.
> 
> Thanks.
> Cascardo.

By the way, I was too fast in sending this. We really need to keep those lines
as makedumpfile will fail to dump a 4.4 kernel with this patch as is.

Cascardo.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
