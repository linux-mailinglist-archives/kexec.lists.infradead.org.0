Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3FD311D012
	for <lists+kexec@lfdr.de>; Thu, 12 Dec 2019 15:42:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EtiirBXKzHWHrC2g19+ZUGD7ttI5RWMeP5Rj187zvYA=; b=RPtbUtJHkRfnzQwhxmflS+iQx
	l72DGDXFD0T/BQH82IIrFpoDkL7vjCx00gJNHbffeCGy3AbuIEiMEq/GZH4PE4/HzLOjS15r8F/SY
	C3mRjhNsQgDYVjifKyOt6KZCGz2JFt6f8VD/RJO0kekkgmH1j6tkyquZ54EmE/oE9LxW8z8Nevjba
	mk9iMcuDWYjiWHW7Mc/JkiS3l5kpD+p2nVHggEjbgUgI3rO7Y0+oMjpp7vzn6e3e8jzR1yoVt9QgX
	TWrUm4qTuy0aiImUsYZlY/nlicvab8clWbFeoDu2dl97hPsrIe/jAaq8ny5Xtqkg5oPhiCSwWQMIX
	tOHX+HHFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifPft-0007og-31; Thu, 12 Dec 2019 14:42:41 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifNdd-0003kB-1D; Thu, 12 Dec 2019 12:32:14 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 1D740AC35;
 Thu, 12 Dec 2019 12:32:07 +0000 (UTC)
Message-ID: <0a3e22d627a70cb60237c811b5874b9a4413329f.camel@suse.de>
Subject: Re: [PATCH v4 7/8] linux/log2.h: Fix 64bit calculations in
 roundup/down_pow_two()
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Robin Murphy <robin.murphy@arm.com>, andrew.murray@arm.com,
 maz@kernel.org,  linux-kernel@vger.kernel.org, Michael Turquette
 <mturquette@baylibre.com>,  Stephen Boyd <sboyd@kernel.org>, Emilio
 =?ISO-8859-1?Q?L=F3pez?= <emilio@elopez.com.ar>, Maxime Ripard
 <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>, Mike Marciniszyn
 <mike.marciniszyn@intel.com>, Dennis Dalessandro
 <dennis.dalessandro@intel.com>,  Yishai Hadas <yishaih@mellanox.com>, Moni
 Shoua <monis@mellanox.com>, David Woodhouse <dwmw2@infradead.org>,  Lu
 Baolu <baolu.lu@linux.intel.com>, Joerg Roedel <joro@8bytes.org>, Tom
 Lendacky <thomas.lendacky@amd.com>, Mirko Lindner <mlindner@marvell.com>,
 Stephen Hemminger <stephen@networkplumber.org>, Jiri Pirko
 <jiri@resnulli.us>, Solarflare linux maintainers
 <linux-net-drivers@solarflare.com>, Edward Cree <ecree@solarflare.com>, 
 Martin Habets <mhabets@solarflare.com>, Bjorn Helgaas
 <bhelgaas@google.com>, Eric Biederman <ebiederm@xmission.com>, Thomas Graf
 <tgraf@suug.ch>, Herbert Xu <herbert@gondor.apana.org.au>
Date: Thu, 12 Dec 2019 13:31:57 +0100
In-Reply-To: <70c6b704-a12a-fb44-e93f-a6db12ed928f@arm.com>
References: <20191203114743.1294-1-nsaenzjulienne@suse.de>
 <20191203114743.1294-8-nsaenzjulienne@suse.de>
 <70c6b704-a12a-fb44-e93f-a6db12ed928f@arm.com>
User-Agent: Evolution 3.34.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_043213_370008_DA243E06 
X-CRM114-Status: GOOD (  13.42  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Mailman-Approved-At: Thu, 12 Dec 2019 06:42:39 -0800
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
Cc: linux-pci@vger.kernel.org, "J. Bruce Fields" <bfields@fieldses.org>,
 linux-clk@vger.kernel.org, f.fainelli@gmail.com, linux-rdma@vger.kernel.org,
 phil@raspberrypi.org, Jason Gunthorpe <jgg@ziepe.ca>,
 Doug Ledford <dledford@redhat.com>, linux-rpi-kernel@lists.infradead.org,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 linux-arm-kernel@lists.infradead.org, linux-nfs@vger.kernel.org,
 mbrugger@suse.com, netdev@vger.kernel.org, kexec@lists.infradead.org,
 jeremy.linton@arm.com, "David S. Miller" <davem@davemloft.net>,
 iommu@lists.linux-foundation.org, Chuck Lever <chuck.lever@oracle.com>,
 wahrenst@gmx.net, james.quinlan@broadcom.com,
 Anna Schumaker <anna.schumaker@netapp.com>,
 Robin Murphy <robin.murphy@arm.con>
Content-Type: multipart/mixed; boundary="===============7858203601889935972=="
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org


--===============7858203601889935972==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-FrLm7Huzs2OM/GGn8vDZ"


--=-FrLm7Huzs2OM/GGn8vDZ
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Robin,

On Thu, 2019-12-05 at 17:48 +0000, Robin Murphy wrote:
> On 03/12/2019 11:47 am, Nicolas Saenz Julienne wrote:
> > Some users need to make sure their rounding function accepts and return=
s
> > 64bit long variables regardless of the architecture. Sadly
> > roundup/rounddown_pow_two() takes and returns unsigned longs. It turns
> > out ilog2() already handles 32/64bit calculations properly, and being
> > the building block to the round functions we can rework them as a
> > wrapper around it.
>=20
> Neat! Although all the additional ULL casts this introduces seem=20
> somewhat unwelcome - I suppose the (1ULL << (ilog2(n))) makes it=20
> effectively always return unsigned long long now. Might it make sense to=
=20
> cast the return value to typeof(n) to avoid this slightly non-obvious=20
> behaviour (and the associated churn)?

It might alleviate some of the churn alright but I don't think a cast is re=
ally
going to make the behaviour more obvious. Say your expression is a big mess=
,
you'll have to analyze it to infer the output type, keeping in mind things =
like
integer promotion. See this example, 'params->nelem_hint' and
'params->min_size' are u16:

	diff --git a/lib/rhashtable.c b/lib/rhashtable.c
	index bdb7e4cadf05..70908678c7a8 100644
	--- a/lib/rhashtable.c
	+++ b/lib/rhashtable.c
	@@ -950,7 +950,7 @@ static size_t rounded_hashtable_size(const struct rhas=
htable_params *params)

		if (params->nelem_hint)
			retsize =3D max(roundup_pow_of_two(params->nelem_hint * 4 / 3),
	-                             (unsigned long)params->min_size);
	+                             (unsigned long long)params->min_size);
		else
			retsize =3D max(HASH_DEFAULT_SIZE,
				      (unsigned long)params->min_size);

With a cast the patch will look like this:

	diff --git a/lib/rhashtable.c b/lib/rhashtable.c
	index bdb7e4cadf05..70908678c7a8 100644
	--- a/lib/rhashtable.c
	+++ b/lib/rhashtable.c
	@@ -950,7 +950,7 @@ static size_t rounded_hashtable_size(const struct rhas=
htable_params *params)

		if (params->nelem_hint)
			retsize =3D max(roundup_pow_of_two(params->nelem_hint * 4 / 3),
	-                             (unsigned long)params->min_size);
	+                             (int)params->min_size);
		else
			retsize =3D max(HASH_DEFAULT_SIZE,
				      (unsigned long)params->min_size);

To me it's even less obvious than with a fixed ULL.

My intuition tells me to keep it as similar as the old behaviour, at the
expense of the extra churn (which is not that different from the current st=
atus
quo anyway). That said, I'll be happy to change it.

Regards,
Nicolas


--=-FrLm7Huzs2OM/GGn8vDZ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl3yMz0ACgkQlfZmHno8
x/50Nwf8DZv64TadvwE8CB4bWgsqMtbiu/fef5NUbUYuFUED8TIdE3BewSgcKkjR
UcmnTnVxq9m204FNfGnEcHAS2TjDnv2GvkRDGKIAoXt2ewgnMSoS5cwHJrHfHLr9
KX2ULSnGQqqtWEYGUe9h/hzd1mfC0gun3Mqafs1lQD7h2XeckKMt0iEa/WtfYGnP
8UJbPU5wHnCJwEbQHCtc+mV/kcQfh+3u5OHh3O4KQHcBo5TJVJovpZ6jBV4uBV1G
ePj2s84UCGZcXy1ZuwV2g32zpn8RgDXDWmdEgJ3hi1bTYZZzG4YQc2sTpjidvRB7
86UCrw4pWQ/M0pNf1UdlDlf+jz7Njw==
=1uX6
-----END PGP SIGNATURE-----

--=-FrLm7Huzs2OM/GGn8vDZ--



--===============7858203601889935972==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec

--===============7858203601889935972==--


