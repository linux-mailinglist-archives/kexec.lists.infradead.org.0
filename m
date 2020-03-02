Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92B11175A49
	for <lists+kexec@lfdr.de>; Mon,  2 Mar 2020 13:19:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f72NdIAkKG6NCmh2gNhvXebSznjr2521mudygjUwJVE=; b=nQ91soAK6xNV0l
	89BysE1v3sNP5eE8MBSxxy4c1/rt5oIBSQB0VHnW6Dz3UpDqcn/ALJHjeCpEkqUdlzJHEXY1TWnhi
	dAT5iIh8xGtP2wCsxIM86N5D/TLX0zDRJ/taGpx/DJ9rCY9p4uN5U1xD1uc8JGZXeL3qFObGjU76L
	0aKCbMguIS3fehtGiZIqss2CbmPnv1jCNpX3E+VBzHwrqlJRLTeBQKCKnBlnH+8HRK9IPX+FrDzgU
	+47pk2KGhcTKXQSG0pB66u+TH2InimueZB/kYPGXxvifruHYeAD0C4eZTYUwK1fv7hL+KZCxe1ng+
	fwEW1pXLMETjWmNu6InQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8k2K-00056V-6A; Mon, 02 Mar 2020 12:19:04 +0000
Received: from smtprelay0217.hostedemail.com ([216.40.44.217]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8k2G-00055i-Ky
 for kexec@lists.infradead.org; Mon, 02 Mar 2020 12:19:02 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay01.hostedemail.com (Postfix) with ESMTP id D8764100E7B46;
 Mon,  2 Mar 2020 12:18:51 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1540:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3868:3871:4321:4605:5007:10004:10400:10848:11026:11232:11233:11658:11914:12043:12297:12679:12740:12760:12895:13069:13311:13357:13439:14181:14659:14721:21080:21451:21611:21627:21972:21990:30054:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: mouth08_4d1868ea18439
X-Filterd-Recvd-Size: 2221
Received: from XPS-9350.home (unknown [47.151.143.254])
 (Authenticated sender: joe@perches.com)
 by omf05.hostedemail.com (Postfix) with ESMTPA;
 Mon,  2 Mar 2020 12:18:49 +0000 (UTC)
Message-ID: <843d33f05fabc63329b3d305a25f0a31e9fba7b5.camel@perches.com>
Subject: Re: misc nits Re: [PATCH 1/2] printk: add lockless buffer
From: Joe Perches <joe@perches.com>
To: John Ogness <john.ogness@linutronix.de>, Petr Mladek <pmladek@suse.com>
Date: Mon, 02 Mar 2020 04:17:18 -0800
In-Reply-To: <87r1ybujm5.fsf@linutronix.de>
References: <20200128161948.8524-1-john.ogness@linutronix.de>
 <20200128161948.8524-2-john.ogness@linutronix.de>
 <20200221120557.lxpeoy6xuuqxzu5w@pathway.suse.cz>
 <87r1ybujm5.fsf@linutronix.de>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_041900_749149_F43AFB15 
X-CRM114-Status: UNSURE (   8.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.217 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.40.44.217 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Andrea Parri <parri.andrea@gmail.com>,
 Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Mon, 2020-03-02 at 11:38 +0100, John Ogness wrote:
> On 2020-02-21, Petr Mladek <pmladek@suse.com> wrote:
> > > diff --git a/kernel/printk/printk_ringbuffer.c b/kernel/printk/printk_ringbuffer.c
[]
> > > +static struct prb_data_block *to_block(struct prb_data_ring *data_ring,
> > > +				       unsigned long begin_lpos)
> > > +{
> > > +	char *data = &data_ring->data[DATA_INDEX(data_ring, begin_lpos)];
> > > +
> > > +	return (struct prb_data_block *)data;
> > 
> > Nit: Please, use "blk" instead of "data". I was slightly confused
> > because "data" is also one member of struct prb_data_block.
> 
> OK.

trivia:

Perhaps use void * instead of char * and a direct return
and avoid the naming altogether.

static struct prb_data_block *to_block(struct prb_data_ring *data_ring, 
				       unsigned long begin_lpos)
{
	return (void *)&data_ring->data[DATA_INDEX(data_ring, begin_lpos)];
}


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
