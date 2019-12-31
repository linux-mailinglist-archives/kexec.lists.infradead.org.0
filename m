Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E39112E759
	for <lists+kexec@lfdr.de>; Thu,  2 Jan 2020 15:43:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PDTkN4Xshs682D2vQleeeqhc9+x3pS2fxynkDk5WWyw=; b=j4kP9uaMT3xhUVVD/kTzHZdVs
	J4jYI5Iz82+CybjS2icPYBSkObIIs8sUYZvvMfN3M4jbkMSbVn9IYfnHK50GVpWR1McE9ExITNZjS
	beXcj41phJGGpWqeDcFD8zEbn6/ZULAK6qCk+wFpsIDZS5F2FiRFMh1nCpF3gZyTK+umPK1nt0Qvi
	GkqvyTSPggmXm2w+DFBP0t7QBqyzsEvIwdePc4jWB7qYiTcIXtvUWJkuEL75iyo7yAspW3j9SXaON
	Wd+vasXx192xsV1FSl6l8GIoKF5FxdTzNCtBeqYJTyxGbFVtUJcNkZ9voiroRbq2fKtdVMtXEjIAX
	ygGJbNJeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in1hW-00077I-Qi; Thu, 02 Jan 2020 14:43:50 +0000
Received: from jabberwock.ucw.cz ([46.255.230.98])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imCm5-00014a-QZ
 for kexec@lists.infradead.org; Tue, 31 Dec 2019 08:21:11 +0000
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id 9B55F1C2605; Tue, 31 Dec 2019 09:21:05 +0100 (CET)
Date: Tue, 31 Dec 2019 09:21:04 +0100
From: Pavel Machek <pavel@denx.de>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 4.19 159/219] x86/crash: Add a forward declaration of
 struct kimage
Message-ID: <20191231082104.GA18654@amd>
References: <20191229162508.458551679@linuxfoundation.org>
 <20191229162532.764428471@linuxfoundation.org>
MIME-Version: 1.0
In-Reply-To: <20191229162532.764428471@linuxfoundation.org>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_002110_007753_F86C4043 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.255.230.98 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Mailman-Approved-At: Thu, 02 Jan 2020 06:43:49 -0800
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
Cc: =?iso-8859-1?Q?J=FCrgen?= Gross <jgross@suse.com>,
 Tom Lendacky <thomas.lendacky@amd.com>, Sasha Levin <sashal@kernel.org>,
 Lianbo Jiang <lijiang@redhat.com>, bhe@redhat.com,
 Ingo Molnar <mingo@redhat.com>, x86-ml <x86@kernel.org>,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, dhowells@redhat.com, horms@verge.net.au,
 ebiederm@xmission.com, "H. Peter Anvin" <hpa@zytor.com>,
 Thomas Gleixner <tglx@linutronix.de>, Borislav Petkov <bp@suse.de>,
 dyoung@redhat.com, d.hatayama@fujitsu.com, vgoyal@redhat.com,
 kbuild test robot <lkp@intel.com>
Content-Type: multipart/mixed; boundary="===============6812263833685042603=="
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org


--===============6812263833685042603==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="mYCpIKhGyMATD0i+"
Content-Disposition: inline


--mYCpIKhGyMATD0i+
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun 2019-12-29 18:19:21, Greg Kroah-Hartman wrote:
> From: Lianbo Jiang <lijiang@redhat.com>
>=20
> [ Upstream commit 112eee5d06007dae561f14458bde7f2a4879ef4e ]
>=20
> Add a forward declaration of struct kimage to the crash.h header because
> future changes will invoke a crash-specific function from the realmode
> init path and the compiler will complain otherwise like this:
>=20
>   In file included from arch/x86/realmode/init.c:11:
>   ./arch/x86/include/asm/crash.h:5:32: warning: =E2=80=98struct kimage=E2=
=80=99 declared inside\

This is not needed in 4.19-stable, as
6f599d84231fd27e42f4ca2a786a6641e8cddf00 is not being backported
there. (But is simple enough not to do harm).

Best regards,
									Pavel

> @@ -2,6 +2,8 @@
>  #ifndef _ASM_X86_CRASH_H
>  #define _ASM_X86_CRASH_H
> =20
> +struct kimage;
> +
>  int crash_load_segments(struct kimage *image);
>  int crash_copy_backup_region(struct kimage *image);
>  int crash_setup_memmap_entries(struct kimage *image,

--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--mYCpIKhGyMATD0i+
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl4LBPAACgkQMOfwapXb+vI1YwCgkt7BeSAXQG8Y9wgvq32qdefL
FEMAnAnUXf/SFS6l9L7ov4sP9dCPQc4D
=WrFA
-----END PGP SIGNATURE-----

--mYCpIKhGyMATD0i+--


--===============6812263833685042603==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec

--===============6812263833685042603==--

