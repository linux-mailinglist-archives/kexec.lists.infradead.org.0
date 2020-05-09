Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F26F91CBD0D
	for <lists+kexec@lfdr.de>; Sat,  9 May 2020 05:49:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iXE/hYGyqPKMYNiGz8MMO2e3Dzg5xuAQhferkPtoATs=; b=cOBiLEgo4MWRAs
	NEpMNSPaIwaWaxzYNRp8VCcNbmXFGryI7G/hK1idQ46cuFWPNVT4F+ukFv2/tjioSHYzT3dw03Mp3
	zWj+YPJ42BlT6CBuvKy+HI8AHMy+Uq3Pb5Lvgs8tONjN/qqrA3v7iywwdVOBZu7aMNPVjXsGCRbGg
	KFE9PT/gmQSnRnJrtrnHO3upKUZ1Snqq9d58/Q6ycOzi1XxsSNFVqX4pbnGiYfDXBetlPcQJZ0nTp
	QKLzl7YwMdejSrBCplk/9uQVuVeoRU0QiKsYA/V9hVe6qja+8zwJz8agvrvvjKr0rJ0mvlrQHKUfV
	R2J83kJ9hYdFfukvDcSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXGU4-0002BM-O5; Sat, 09 May 2020 03:49:04 +0000
Received: from mail-pg1-f195.google.com ([209.85.215.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXGU1-00027P-0X
 for kexec@lists.infradead.org; Sat, 09 May 2020 03:49:02 +0000
Received: by mail-pg1-f195.google.com with SMTP id 207so1825149pgc.6
 for <kexec@lists.infradead.org>; Fri, 08 May 2020 20:48:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=hD0R4FU5llXtJjcH0Qaw/mWo7Wc3hOPuTzuuFmKSMr4=;
 b=mBBY65sSmjSuL1tSc4GS+jt4I0hDt4jYmL5x+neWgcAS9DG5PP+Qd2gMlUZ3R8bIf5
 a28rUYFfu/RYTbvHlrFTAVykc/f1bySk+SgnAu0O3dANRHVGD5/mTFnfZzTwgzMmvUDQ
 vlBq2cYl4978c/1QWI7SsEPH2YBzr2+Cqnxc9kbgICog53dN5688k/sOmyNc4kOwQstC
 7Yylm8Wni20gG7BV1nBEFPApf/SveGK8vxWMLRCdzClKptLh25FP/8VHuGb6Wa08FSb7
 /Ut41kCcZHviNb78gORnYswr8sZiE+yJiaUTrBrBkkBJ/UR+fxJjaoUb7kVW7WZzcXHv
 2nvA==
X-Gm-Message-State: AGi0PuZqEub3J0ckDUJf+ZclvUn4g29hnU8mb+WebZ9uK+2juPgErZJX
 Hrklt0ozo5BVcDKRq44WehM=
X-Google-Smtp-Source: APiQypJgqquftLfojmRDQ311OD9XhSFj0W23UlCHJWHNlOTbAGa4+b+T6f+86Ay6aZJLvCi5D/41TA==
X-Received: by 2002:a63:dc56:: with SMTP id f22mr4823828pgj.284.1588996137062; 
 Fri, 08 May 2020 20:48:57 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id 6sm3199157pfj.123.2020.05.08.20.48.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 May 2020 20:48:55 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id 642134035F; Sat,  9 May 2020 03:48:54 +0000 (UTC)
Date: Sat, 9 May 2020 03:48:54 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Rafael Aquini <aquini@redhat.com>
Subject: Re: [PATCH v2] kernel: add panic_on_taint
Message-ID: <20200509034854.GI11244@42.do-not-panic.com>
References: <20200507180631.308441-1-aquini@redhat.com>
 <20200507182257.GX11244@42.do-not-panic.com>
 <20200507184307.GF205881@optiplex-lnx>
 <20200507184705.GG205881@optiplex-lnx>
 <20200507203340.GZ11244@42.do-not-panic.com>
 <20200507220606.GK205881@optiplex-lnx>
 <20200507222558.GA11244@42.do-not-panic.com>
 <20200508124719.GB367616@optiplex-lnx>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200508124719.GB367616@optiplex-lnx>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_204901_067790_0EA66274 
X-CRM114-Status: GOOD (  20.34  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mcgrof[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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

On Fri, May 08, 2020 at 08:47:19AM -0400, Rafael Aquini wrote:
> On Thu, May 07, 2020 at 10:25:58PM +0000, Luis Chamberlain wrote:
> > On Thu, May 07, 2020 at 06:06:06PM -0400, Rafael Aquini wrote:
> > > On Thu, May 07, 2020 at 08:33:40PM +0000, Luis Chamberlain wrote:
> > > > I *think* that a cmdline route to enable this would likely remove the
> > > > need for the kernel config for this. But even with Vlastimil's work
> > > > merged, I think we'd want yet-another value to enable / disable this
> > > > feature. Do we need yet-another-taint flag to tell us that this feature
> > > > was enabled?
> > > >
> > > 
> > > I guess it makes sense to get rid of the sysctl interface for
> > > proc_on_taint, and only keep it as a cmdline option. 
> > 
> > That would be easier to support and k3eps this simple.
> > 
> > > But the real issue seems to be, regardless we go with a cmdline-only option
> > > or not, the ability of proc_taint() to set any arbitrary taint flag 
> > > other than just marking the kernel with TAINT_USER. 
> > 
> > I think we would have no other option but to add a new TAINT flag so
> > that we know that the taint flag was modified by a user. Perhaps just
> > re-using TAINT_USER when proc_taint() would suffice.
> >
> 
> We might not need an extra taint flag if, perhaps, we could make these
> two features mutually exclusive. The idea here is that bitmasks added 
> via panic_on_taint get filtered out in proc_taint(), so a malicious 
> user couldn't exploit the latter interface to easily panic the system,
> when the first one is also in use. 

I get it, however I I can still see the person who enables enabling
panic-on-tain wanting to know if proc_taint() was used. So even if
it was not on their mask, if it was modified that seems like important
information for a bug report analysis.

  Luis

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
