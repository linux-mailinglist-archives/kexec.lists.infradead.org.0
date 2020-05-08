Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00C251CABE0
	for <lists+kexec@lfdr.de>; Fri,  8 May 2020 14:47:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1vl3iaGKUAS2tnBhqKC7oVwgOW9EgxWCsNb2ljbELVU=; b=ZnCqk1KEnOtqzL
	aYHIqUQG4J1c483N47AOdeMu2/7ahbj+vwb9bPQO1AcEst9gL4d7C4bdt7dslvwRmoIE39G25hizP
	Ddbwc8TNJ5mER5OOTgZ6YPTq1ReViRd2Qfz8dQJtVO+lRWzNuKJxR+NoNqgVXHkF+Lno0pxqPKgPJ
	tVRoJ+pUPaJ0fSz07x+p6oEa5bqbEpMS2iapmOakj4iiY3jF1w27qi8qGrAVtrTbLECuFTrCsUc6t
	r6oYEfsl0fI87LtcIK282no/iHoSb3vD2sHkWlsg4/XFuE9Jg5p4g3JrcxgbRrPlcpAkeT7juIfr3
	VYGjKGcL6KEZuQMOMKzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX2Ps-0004JP-5X; Fri, 08 May 2020 12:47:48 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX2Po-0004HU-OR
 for kexec@lists.infradead.org; Fri, 08 May 2020 12:47:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588942061;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=scLEqBSEllA/rWbrO6NS8p6P9loIqw6BnJNugdMi+eA=;
 b=BTX3qZbTH+QtFr8upuhFr+MjiTJREQX+CkuYleZ4No22mzMYGuygzfxqSApugan3fAWVPn
 elsZrAKG1e9W9C+ntLXqh9H9ipq00hyM1Jdz1FXRZ00n1XHnHVym9J7MGgxaYH1szynJjP
 OZVfpJOcG3xqSIei/WpOSvYulKHxeJ8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-390-amwZP0r1MEyVfmBB0iyacA-1; Fri, 08 May 2020 08:47:36 -0400
X-MC-Unique: amwZP0r1MEyVfmBB0iyacA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4516080183C;
 Fri,  8 May 2020 12:47:34 +0000 (UTC)
Received: from optiplex-lnx (unknown [10.3.128.26])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 21623707A6;
 Fri,  8 May 2020 12:47:22 +0000 (UTC)
Date: Fri, 8 May 2020 08:47:19 -0400
From: Rafael Aquini <aquini@redhat.com>
To: Luis Chamberlain <mcgrof@kernel.org>
Subject: Re: [PATCH v2] kernel: add panic_on_taint
Message-ID: <20200508124719.GB367616@optiplex-lnx>
References: <20200507180631.308441-1-aquini@redhat.com>
 <20200507182257.GX11244@42.do-not-panic.com>
 <20200507184307.GF205881@optiplex-lnx>
 <20200507184705.GG205881@optiplex-lnx>
 <20200507203340.GZ11244@42.do-not-panic.com>
 <20200507220606.GK205881@optiplex-lnx>
 <20200507222558.GA11244@42.do-not-panic.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200507222558.GA11244@42.do-not-panic.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_054744_883125_3527FF23 
X-CRM114-Status: GOOD (  17.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.61 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-doc@vger.kernel.org, Takashi Iwai <tiwai@suse.de>,
 Jeff Mahoney <jeffm@suse.com>, bhe@redhat.com, corbet@lwn.net,
 Laura Abbott <labbott@redhat.com>, dyoung@redhat.com,
 Ann Davis <AnDavis@suse.com>, Richard Palethorpe <rpalethorpe@suse.de>,
 keescook@chromium.org, Jiri Kosina <jikos@kernel.org>, cai@lca.pw,
 Adrian Bunk <bunk@kernel.org>, Tso Ted <tytso@mit.edu>,
 Jessica Yu <jeyu@suse.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 rdunlap@infradead.org, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, akpm@linux-foundation.org,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Thu, May 07, 2020 at 10:25:58PM +0000, Luis Chamberlain wrote:
> On Thu, May 07, 2020 at 06:06:06PM -0400, Rafael Aquini wrote:
> > On Thu, May 07, 2020 at 08:33:40PM +0000, Luis Chamberlain wrote:
> > > I *think* that a cmdline route to enable this would likely remove the
> > > need for the kernel config for this. But even with Vlastimil's work
> > > merged, I think we'd want yet-another value to enable / disable this
> > > feature. Do we need yet-another-taint flag to tell us that this feature
> > > was enabled?
> > >
> > 
> > I guess it makes sense to get rid of the sysctl interface for
> > proc_on_taint, and only keep it as a cmdline option. 
> 
> That would be easier to support and k3eps this simple.
> 
> > But the real issue seems to be, regardless we go with a cmdline-only option
> > or not, the ability of proc_taint() to set any arbitrary taint flag 
> > other than just marking the kernel with TAINT_USER. 
> 
> I think we would have no other option but to add a new TAINT flag so
> that we know that the taint flag was modified by a user. Perhaps just
> re-using TAINT_USER when proc_taint() would suffice.
>

We might not need an extra taint flag if, perhaps, we could make these
two features mutually exclusive. The idea here is that bitmasks added 
via panic_on_taint get filtered out in proc_taint(), so a malicious 
user couldn't exploit the latter interface to easily panic the system,
when the first one is also in use. 
 
-- Rafael


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
