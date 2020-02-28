Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E96ED172F66
	for <lists+kexec@lfdr.de>; Fri, 28 Feb 2020 04:37:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iTvUSXu0uNazcozZSFZ0KbMCY0+FZF8Irvdmr1SpS7c=; b=LmnS973GVZEwlh
	mgJ5kmO0b+kiRKeBKP91A3ECYHWjouxuDjazzOZPh/zB0nJLXqOp6pHXCvpcSmniKAL58YrZ71CVR
	ruDEXB0onq0t69uWiyZP2t1QjrJXczmLWM/9ams61YNHtqhOZbPhU7mwHMMOCtsRRNPIfxrTqQb8G
	T98z03BW423V4vuabIYmp4ThlKglxpzzwxd3IdhNDeI2gEPTVE1OXMUTmBAvtJpkzv+oColpAhyNB
	HLxjn+aNphFPHY/t2ez6oEMvVJOIFRGDs7PyB/v2O/FkVo3DoXwTVuyzZF5zjHMnlBRN33TggKsYy
	tQK/3d5yB7iuNfK4TS8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7WSe-0004zZ-96; Fri, 28 Feb 2020 03:37:12 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7WSX-0004yr-Fm
 for kexec@lists.infradead.org; Fri, 28 Feb 2020 03:37:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1582861021;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=aDJjztBIb3g7WuQ8tm9j5jVgnbmxznk84OuAMLjRbBQ=;
 b=OJ7Z5xT8kgtMXRIZOYfxNCfKkLv5Sbffh+O4OLYmv7legVzzY5N4ziVV5LnbWBvrolKVyy
 iQN5whzpD2El2X9cbczqtxB8HH5QQaqFJW7XMYvPvf5Jxjr3sGJ9UVJiSNBy7bTniKEQPj
 gYQDXTqPmwi9dAwJg32mcbyYjD5dIjU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-1-RILYYk35OgShqd8ub0Y2sA-1; Thu, 27 Feb 2020 22:36:57 -0500
X-MC-Unique: RILYYk35OgShqd8ub0Y2sA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0C33B10509B8;
 Fri, 28 Feb 2020 03:36:55 +0000 (UTC)
Received: from localhost (ovpn-12-49.pek2.redhat.com [10.72.12.49])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 36AE45D9CD;
 Fri, 28 Feb 2020 03:36:50 +0000 (UTC)
Date: Fri, 28 Feb 2020 11:36:48 +0800
From: Baoquan He <bhe@redhat.com>
To: Kees Cook <keescook@chromium.org>
Subject: Re: [RFC PATCH 09/11] kallsyms: hide layout and expose seed
Message-ID: <20200228033648.GJ24216@MiWiFi-R3L-srv>
References: <20200205223950.1212394-1-kristen@linux.intel.com>
 <20200205223950.1212394-10-kristen@linux.intel.com>
 <202002060428.08B14F1@keescook>
 <a915e1eb131551aa766fde4c14de5a3e825af667.camel@linux.intel.com>
 <20200227024253.GA5707@MiWiFi-R3L-srv>
 <202002270802.1CA8B32AC@keescook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202002270802.1CA8B32AC@keescook>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_193705_604213_2DAEF061 
X-CRM114-Status: GOOD (  13.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: kernel-hardening@lists.openwall.com, arjan@linux.intel.com, x86@kernel.org,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org, mingo@redhat.com,
 bp@alien8.de, Kristen Carlson Accardi <kristen@linux.intel.com>, hpa@zytor.com,
 tglx@linutronix.de, rick.p.edgecombe@intel.com, dyoung@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 02/27/20 at 08:02am, Kees Cook wrote:
> On Thu, Feb 27, 2020 at 10:42:53AM +0800, Baoquan He wrote:
> > On 02/06/20 at 09:51am, Kristen Carlson Accardi wrote:
> > > On Thu, 2020-02-06 at 04:32 -0800, Kees Cook wrote:
> > 
> > > > In the past, making kallsyms entirely unreadable seemed to break
> > > > weird
> > > > stuff in userspace. How about having an alternative view that just
> > > > contains a alphanumeric sort of the symbol names (and they will
> > > > continue
> > > > to have zeroed addresses for unprivileged users)?
> > > > 
> > > > Or perhaps we wait to hear about this causing a problem, and deal
> > > > with
> > > > it then? :)
> > > > 
> > > 
> > > Yeah - I don't know what people want here. Clearly, we can't leave
> > > kallsyms the way it is. Removing it entirely is a pretty fast way to
> > > figure out how people use it though :).
> > 
> > Kexec-tools and makedumpfile are the users of /proc/kallsyms currently. 
> > We use kallsyms to get page_offset_base and _stext.
> 
> AIUI, those run as root so they'd be able to consume the uncensored
> output.

Yes, they have to be run under root.


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
